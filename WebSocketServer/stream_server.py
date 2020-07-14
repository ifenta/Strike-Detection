import socket
import os
import threading
from time import sleep
from datetime import datetime
import matplotlib.pyplot as plt
from matplotlib.animation import FuncAnimation

run_visual = True
run_udp = True

class MainClass:

    def __init__(self, udp_ip = "", udp_port = 9999):
        self.udp_ip = udp_ip
        self.udp_port = udp_port
        self.wifi_buffer = [[],[],[],[],[],[],[],[],[],[]]
        self.new_data = False
        self.wifi_initialized = False

        self.buffer_head = 0

        self.wifi_thread = True
        self.algorithm_thread = True
        self.is_alive_thread = True

        self.addr = 0
        

        if(run_visual):
            #self.fig, self.axs = plt.subplots(3,3,sharex=True)
            self.fig, self.axs = plt.subplots(2,1,sharex=True)



### Logger w/ Timestamp ###
    def console_print(self, message):
        #global test_print_counter
        now = datetime.now()

        timestamp = datetime.timestamp(now)
        dt_object = datetime.fromtimestamp(timestamp)

        print(str(dt_object) + "    " + message)



### Wifi Functions ###

## Parse Data from WiFi ##
    def parse_data(self, data):
        data = data.decode('utf-8')
        newline_index = data.find('\n')
        data_count = 0
        if(newline_index != -1):
            while True:
                semicolon_index = data.find(';')
                if(semicolon_index != -1):
                    self.wifi_buffer[data_count].append(float(data[0:semicolon_index]))
                    data = data[semicolon_index+1:]
                    data_count += 1
                else:
                    self.wifi_buffer[data_count].append(float(data[0:newline_index]))
                    self.new_data = True
                    self.buffer_head += 1
                    break
        else:
            pass   

## Start socket and bindings ##
    def initialize_wifi(self):
        global run_udp

        if(run_udp):
            self.sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM) 
            self.sock.bind((self.udp_ip, self.udp_port))
            
            self.wifi_initialized = True

## Confirmation from Client (used for UDP) ##
    def connect_to_client(self):
        while True:
            data, self.addr = self.sock.recvfrom(1024)
            #self.console_print("Got data from" + str(addr))
            decode_data = data.decode("utf-8")
            #self.console_print(str(decode_data))
            if decode_data[0] == 'L':
                self.sock.sendto(data, self.addr)
                break

        self.console_print("Recieving Data now")

## Main WiFi Function ##
    def start_wifi(self):
        global run_udp

        self.initialize_wifi()
        
        if run_udp:
            self.connect_to_client()

            try:
                while self.wifi_thread:
                    data, addr = self.sock.recvfrom(1024) # buffer size is 1024 bytes
                    #self.console_print("recieved data")
                    self.parse_data(data)

                    #plot data

                    #self.send_ack(addr)
            except KeyboardInterrupt:
                self.console_print("Keyboard Interrupt")

        else:
            print("starting tcp server")
            with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
                print("binding to " + str(self.udp_ip) + ", " + str(self.udp_port))
                s.bind((self.udp_ip, self.udp_port))
                print("Listening")
                s.listen()
                conn, addr = s.accept()
                with conn:
                    self.console_print("Connected by " + str(addr))
                    while self.wifi_thread:
                        data = conn.recv(1024)
                        if not data:
                            break
                        self.parse_data(data)


## Send alive ping to client (used for UDP) ##
    def is_alive(self):
        while(self.is_alive_thread):
            if(self.wifi_initialized and self.addr != 0):
                self.sock.sendto("hello".encode('utf-8'), self.addr)
                sleep(3)
            else:
                pass



### Visual Functions ###

## Initialize Async graph ##
    def initialize_visual(self):

        plt.style.use('fivethirtyeight')
        
        self.ani = FuncAnimation(self.fig, self.animate, interval=5)
        self.console_print("created FuncAnimation")
        plt.show()
        
        self.console_print("initialized")

## Reading WiFi buffer to plot ##
    def animate(self, i):
        if self.new_data:

            x = self.wifi_buffer[0]
            latest_time = x[-1]
            xLabel = "Time (ms)"

            accX = self.wifi_buffer[1]
            accY = self.wifi_buffer[2]
            accZ = self.wifi_buffer[3]

            magX = self.wifi_buffer[4]
            magY = self.wifi_buffer[5]
            magZ = self.wifi_buffer[6]

            gyroX = self.wifi_buffer[7]
            gyroY = self.wifi_buffer[8]
            gyroZ = self.wifi_buffer[9]

            self.axs[0].clear()
            if(latest_time>=10000):
                self.axs[0].set_xlim(latest_time-10000,latest_time)
            self.axs[0].plot(x,accY)
            self.axs[0].set_xlabel(xLabel)
            self.axs[0].set_ylabel("AccY")

            self.axs[1].clear()
            if(latest_time>=10000):
                self.axs[1].set_xlim(latest_time-10000,latest_time)
            self.axs[1].plot(x,magX)
            self.axs[1].set_xlabel(xLabel)
            self.axs[1].set_ylabel("MagX")

            '''
            self.axs[0][0].clear()
            if(latest_time>=10000):
                self.axs[0][0].set_xlim(latest_time-10000,latest_time)
            self.axs[0][0].plot(x,accX)
            self.axs[0][0].set_xlabel(xLabel)
            self.axs[0][0].set_ylabel("AccX")

            self.axs[0][1].clear()
            if(latest_time>=10000):
                self.axs[0][1].set_xlim(latest_time-10000,latest_time)
            self.axs[0][1].plot(x,accY)
            self.axs[0][1].set_xlabel(xLabel)
            self.axs[0][1].set_ylabel("AccY")

            self.axs[0][2].clear()
            if(latest_time>=10000):
                self.axs[0][2].set_xlim(latest_time-10000,latest_time)
            self.axs[0][2].plot(x,accZ)
            self.axs[0][2].set_xlabel(xLabel)
            self.axs[0][2].set_ylabel("AccZ")

            self.axs[1][0].clear()
            if(latest_time>=10000):
                self.axs[1][0].set_xlim(latest_time-10000,latest_time)
            self.axs[1][0].plot(x,magX)
            self.axs[1][0].set_xlabel(xLabel)
            self.axs[1][0].set_ylabel("MagX")

            self.axs[1][1].clear()
            if(latest_time>=10000):
                self.axs[1][1].set_xlim(latest_time-10000,latest_time)
            self.axs[1][1].plot(x,magY)
            self.axs[1][1].set_xlabel(xLabel)
            self.axs[1][1].set_ylabel("MagY")

            self.axs[1][2].clear()
            if(latest_time>=10000):
                self.axs[1][2].set_xlim(latest_time-10000,latest_time)
            self.axs[1][2].plot(x,magZ)
            self.axs[1][2].set_xlabel(xLabel)
            self.axs[1][2].set_ylabel("MagZ")

            self.axs[2][0].clear()
            if(latest_time>=10000):
                self.axs[2][0].set_xlim(latest_time-10000,latest_time)
            self.axs[2][0].plot(x,gyroX)
            self.axs[2][0].set_xlabel(xLabel)
            self.axs[2][0].set_ylabel("GyroX")

            self.axs[2][1].clear()
            if(latest_time>=10000):
                self.axs[2][1].set_xlim(latest_time-10000,latest_time)
            self.axs[2][1].plot(x,gyroY)
            self.axs[2][1].set_xlabel(xLabel)
            self.axs[2][1].set_ylabel("GyroY")

            self.axs[2][2].clear()
            if(latest_time>=10000):
                self.axs[2][2].set_xlim(latest_time-10000,latest_time)
            self.axs[2][2].plot(x,gyroZ)
            self.axs[2][2].set_xlabel(xLabel)
            self.axs[2][2].set_ylabel("GyroZ")
            '''            

            self.new_data = False



### Algorithm Funciton ###
    def algorithm_start(self):
        #analyze data in buffer
        self.console_print("Starting algorithm")
        sample_size = 15
        buffer_tail = sample_size

        while self.algorithm_thread:
            if (self.buffer_head < (sample_size)) or (buffer_tail+1 >= self.buffer_head):
                pass
            else:
                if ( (self.wifi_buffer[2][buffer_tail-1]>25) and 
                (self.wifi_buffer[2][buffer_tail] < self.wifi_buffer[2][buffer_tail-1]) and 
                (max(self.wifi_buffer[2][buffer_tail-sample_size:buffer_tail]) == self.wifi_buffer[2][buffer_tail-1]) ):

                    mag_x_slope = (self.wifi_buffer[4][buffer_tail]-self.wifi_buffer[4][buffer_tail-sample_size-5])/(sample_size-5)
                    mag_x_avg = (self.wifi_buffer[4][buffer_tail]+self.wifi_buffer[4][buffer_tail-sample_size])/(2)
                    if mag_x_slope > 0.01 and self.wifi_buffer[8][buffer_tail-2] > 1000:
                        self.console_print("Twist Punch")
                    elif mag_x_avg < -0.1:
                        self.console_print("Vertical Punch")
                    else: 
                        self.console_print("Horizontal Punch")
                
                buffer_tail += 1



### Write WiFi buffer to CSV at end ###
    def write_to_csv(self):
        f= open("input_stream_data.txt","w+")
        
        f.write("Time(ms);AccX(m/s^2);AccY(m/s^2);AccZ(m/s^2);MagX(gauss);MagY(gauss);MagZ(gauss);GyroX(dps);GyroY(dps);GyroZ(dps)\n")

        #write data to csv
        for i in range(len(self.wifi_buffer[0])):
            input_data = ""
            for j in range(10):
                input_data += str(self.wifi_buffer[j][i])
                if(j<9):
                    input_data += ';'
            input_data += '\n'
            f.write(input_data)
        
        f.close()
        self.console_print("completed writing to csv")
        

### Main Function ###
def main():
    global run_udp

    mc = MainClass()

    wifi_thread = threading.Thread(target=mc.start_wifi)
    wifi_thread.start()

    #start algolithm
    algorithm_thread = threading.Thread(target=mc.algorithm_start)
    algorithm_thread.start()

    #send alive notice to esp32
    if(run_udp):
        alive_thread = threading.Thread(target=mc.is_alive)
        alive_thread.start()

    try:
        if(run_visual):
            mc.initialize_visual()
        else:
            while(True):
                pass
    except KeyboardInterrupt:
        mc.console_print("Keyboard interrupt")     
    finally:
        mc.algorithm_thread = False
        mc.wifi_thread = False
        mc.is_alive_thread = False
        plt.close()
        mc.write_to_csv()
        mc.console_print("Finished")


if __name__ == "__main__":
    main()
