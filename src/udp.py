import socket
from time import sleep
from functions import console_print

class UDP():

    def __init__(self, shared_data, udp_ip = "", udp_port = 9999):

        self.shared_data = shared_data

        self.addr = 0

        self.udp_ip = udp_ip
        self.udp_port = udp_port
        #self.data_types = ['Time', 'Accx', 'Accy', 'Accz', 'Magx', 'Magy', 'Magz', 'Gyrox', 'Gyroy', 'Gyroz']
        self.new_data = False
        self.new_incoming_data = False
        self.wifi_initialized = False

    ## Parse Data from WiFi ##
    def parse_data(self, data):
        data = data.decode('utf-8')
        newline_index = data.find('\n')
        data_count = 0
        #print(data)
        while(newline_index != -1):
            while True:
                semicolon_index = data.find(';')
                newline_index = data.find('\n')
                #print("semicolon index: " + str(semicolon_index))
                #print("newline index: " + str(newline_index))
                if(semicolon_index != -1 and semicolon_index<newline_index):
                    #print(self.data_types[data_count] + str(data[0:semicolon_index]))
                    self.shared_data.wifi_buffer[data_count].append(float(data[0:semicolon_index]))
                    data = data[semicolon_index+1:]
                    data_count += 1
                else:
                    #print(self.data_types[data_count] + str(data[0:newline_index]))
                    self.shared_data.wifi_buffer[data_count].append(float(data[0:newline_index]))
                    data = data[newline_index+1:]
                    self.new_data = True
                    self.shared_data.buffer_head += 1
                    #print("Break")
                    break

            
            newline_index = data.find('\n')
            data_count = 0
 
## Start socket and bindings ##
    def initialize_wifi(self):

        self.sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM) 
        self.sock.bind((self.udp_ip, self.udp_port))
        
        self.wifi_initialized = True

## Confirmation from Client (used for UDP) ##
    def connect_to_client(self):
        while True:
            data, self.addr = self.sock.recvfrom(1024)
            #console_print("Got data from" + str(addr), self.shared_data.device)
            decode_data = data.decode("utf-8")
            #console_print(str(decode_data), self.shared_data.device)
            if decode_data[0] == 'L':
                self.sock.sendto(data, self.addr)
                self.new_incoming_data = True
                break
            sleep(1)

        console_print("Recieving Data now", self.shared_data.device)
        self.shared_data.wifi_connected = True
        for x in range(len(self.shared_data.wifi_buffer)):
            self.shared_data.wifi_buffer[x] = []
        self.buffer_head = 0

## Main WiFi Function ##
    def start_wifi(self):

        self.initialize_wifi()
        self.connect_to_client()

        try:
            while self.shared_data.wifi_thread:
                if(self.shared_data.wifi_connected):
                    data, addr = self.sock.recvfrom(1024) # buffer size is 1024 bytes
                    self.new_incoming_data=True
                    if(self.shared_data.read_data):
                        self.parse_data(data)
                else:
                    pass
        except KeyboardInterrupt:
            console_print("In UDP: Keyboard Interrupt", self.shared_data.device)

## Send alive ping to client (used for UDP) ##
    def is_alive(self):
        while(self.shared_data.is_alive_thread):
            if(self.wifi_initialized and self.addr != 0):
                if(self.new_incoming_data):
                    self.new_incoming_data = False
                else: 
                    console_print("Lost Connection", self.shared_data.device)
                    self.shared_data.wifi_connected = False
                    self.connect_to_client()
                self.sock.sendto("hello".encode('utf-8'), self.addr)
                #console_print("Sent alive connection to client", self.shared_data.device)

            sleep(3)

