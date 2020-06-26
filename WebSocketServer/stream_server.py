import socket
import os
import threading
import matplotlib.pyplot as plt
from matplotlib.animation import FuncAnimation


class MainClass:

    def __init__(self, udp_ip = "", udp_port = 9999):
        self.udp_ip = udp_ip
        self.udp_port = udp_port
        self.udp_buffer = [[],[],[],[],[],[],[],[],[],[]]
        self.new_data = False
        self.udp_initialized = False

        #self.fig = plt.figure()

        #self.axs=[]
        #self.axs.append(self.fig.add_subplot(1,1,1))
        #self.axs.append(self.fig.add_subplot(3,1,1))
        #self.axs.append(self.fig.add_subplot(5,1,1))

        self.fig, self.axs = plt.subplots(3,1,sharex=True)

        self.sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM) 
        self.sock.bind((self.udp_ip, self.udp_port))

    def initialize_udp(self):
        #self.sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM) 
        #self.sock.bind((self.udp_ip, self.udp_port))

        self.udp_initialized = True

    def initialize_visual(self):

        #plt.ion()
        plt.style.use('fivethirtyeight')
        
        #self.ani = FuncAnimation(plt.gcf(), self.animate, interval=1000)
        self.ani = FuncAnimation(self.fig, self.animate, interval=5)
        print("created FuncAnimation")
        #plt.draw()
        plt.show()
        
        print("initialized")

    def animate(self, i):
        #print(self.new_data)
        if self.new_data:

            #x = self.udp_buffer[0]
            #accX = self.udp_buffer[1]

            #plt.cla()
            #plt.plot(x, accX)

            
            x = self.udp_buffer[0]
            latest_time = x[-1]
            xLabel = "Time (ms)"

            accX = self.udp_buffer[1]
            accY = self.udp_buffer[2]
            accZ = self.udp_buffer[3]

            magX = self.udp_buffer[4]
            magY = self.udp_buffer[5]
            magZ = self.udp_buffer[6]

            gyroX = self.udp_buffer[7]
            gyroY = self.udp_buffer[8]
            gyroZ = self.udp_buffer[9]

            #fig, axs = plt.subplots(3,1,sharex=True)


            self.axs[0].clear()
            if(latest_time>=10000):
                self.axs[0].set_xlim(latest_time-10000,latest_time)
            self.axs[0].plot(x,accX)
            self.axs[0].plot(x,accY)
            self.axs[0].plot(x,accZ)
            self.axs[0].set_xlabel(xLabel)
            self.axs[0].set_ylabel("Accleration(m/s^2)")

            self.axs[1].clear()
            if(latest_time>=10000):
                self.axs[1].set_xlim(latest_time-10000,latest_time)
            self.axs[1].plot(x,magX)
            self.axs[1].plot(x,magY)
            self.axs[1].plot(x,magZ)
            self.axs[1].set_xlabel(xLabel)
            self.axs[1].set_ylabel("Magnetometer (gauss)")

            self.axs[2].clear()
            if(latest_time>=10000):
                self.axs[2].set_xlim(latest_time-10000,latest_time)
            self.axs[2].plot(x,gyroX)
            self.axs[2].plot(x,gyroY)
            self.axs[2].plot(x,gyroZ)
            self.axs[2].set_xlabel(xLabel)
            self.axs[2].set_ylabel("Gyro (dps)")

            #clear plot
            

            #plot data
            #plt.show()
            
            self.new_data = False

    def connect_to_client(self):
        while True:
            data, addr = self.sock.recvfrom(1024)
            #print("Got data from" + str(addr))
            decode_data = data.decode("utf-8")
            print(decode_data)
            if decode_data[0] == 'L':
                self.sock.sendto(data, addr)
                break

        print("Recieving Data now")

    def write_to_csv(self):
        f= open("input_stream_data.txt","w+")
        
        f.write("Time(ms);AccX(m/s^2);AccY(m/s^2);AccZ(m/s^2);MagX(gauss);MagY(gauss);MagZ(gauss);GyroX(dps);GyroY(dps);GyroZ(dps)\n")

        #write data to csv
        for i in range(len(self.udp_buffer[0])):
            input_data = ""
            for j in range(10):
                input_data += str(self.udp_buffer[j][i])
                if(j<9):
                    input_data += ';'
            input_data += '\n'
            f.write(input_data)
        
        f.close()
        pass

    def parse_data(self, data):
        #parse incoming data to buffer
        #print("in parse_data")
        data = data.decode('utf-8')
        #print(data)
        newline_index = data.find('\n')
        data_count = 0
        if(newline_index != -1):
            while True:
                semicolon_index = data.find(';')
                if(semicolon_index != -1):
                    self.udp_buffer[data_count].append(float(data[0:semicolon_index]))
                    data = data[semicolon_index+1:]
                    data_count += 1
                else:
                    self.udp_buffer[data_count].append(float(data[0:newline_index]))
                    self.new_data = True
                    break
        else:
            pass

    def send_ack(self, addr):
        self.sock.sendto('\n', addr)               
    
    def start(self):
        while not self.udp_initialized:
            pass

        self.connect_to_client()

        try:
            while True:
                data, addr = self.sock.recvfrom(1024) # buffer size is 1024 bytes
                #print("recieved data")
                self.parse_data(data)

                #plot data

                #self.send_ack(addr)
        except KeyboardInterrupt:
            print("Keyboard intterupt")
            plt.close()
            self.write_to_csv()
        finally:
            print("Finished")
            quit()

    def udp_begin(self):
        self.initialize_udp()
        self.start()


def main():
    ud = MainClass()

    thread = threading.Thread(target=ud.udp_begin)
    thread.start()

    ud.initialize_visual()

main()
