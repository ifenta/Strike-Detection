import socket
import os

class server():

    def __init__(self, filename):

        self.filename = filename

        UDP_IP = ""
        UDP_PORT = 9999

        self.sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM) 
        self.sock.bind((UDP_IP, UDP_PORT))

        self.f= open("position.txt","w+")
    
    def connection_initialization(self):

        while True:
            # Waiting for data to be recieved
            data, addr = self.sock.recvfrom(1024)
            print("Got data from" + str(addr))
            decode_data = data.decode("utf-8")
            print(decode_data)
            # Check to make sure data is correct
            if decode_data[0] == 'H':
                # Send back acknologment
                self.sock.sendto(data, addr)
                break

        print("Recieving Data now")

    def read_data(self):
        while True:
            data, addr = self.sock.recvfrom(1024) # buffer size is 1024 bytes
            decode_data = data.decode("utf-8")
            if decode_data[0] == 'c':
                break
            self.f.write(data.decode("utf-8"))

        self.f.close()
        print("Finished")

