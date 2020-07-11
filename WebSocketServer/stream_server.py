import socket
import os
import threading
from time import sleep
from datetime import datetime
import matplotlib.pyplot as plt
from matplotlib.animation import FuncAnimation

class MainClass:

    def __init__(self, udp_ip = "", udp_port = 9999):
        self.udp_ip = udp_ip
        self.udp_port = udp_port
        self.udp_buffer = [[],[],[],[],[],[],[],[],[],[]]
        self.new_data = False
        self.udp_initialized = False

        self.buffer_head = 0

        self.udp_thread = True
        self.algorithm_thread = True
        


        #self.fig, self.axs = plt.subplots(3,3,sharex=True)
        #self.fig, self.axs = plt.subplots(2,1,sharex=True)


        self.sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM) 
        self.sock.bind((self.udp_ip, self.udp_port))

    def console_print(self, message):
        now = datetime.now()

        timestamp = datetime.timestamp(now)
        dt_object = datetime.fromtimestamp(timestamp)

        print(str(dt_object) + "    " + message)


    def initialize_udp(self):
        #self.sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM) 
        #self.sock.bind((self.udp_ip, self.udp_port))

        self.udp_initialized = True

    def initialize_visual(self):

        #plt.ion()
        plt.style.use('fivethirtyeight')
        
        #self.ani = FuncAnimation(plt.gcf(), self.animate, interval=1000)
        self.ani = FuncAnimation(self.fig, self.animate, interval=5)
        self.console_print("created FuncAnimation")
        #plt.draw()
        plt.show()
        
        self.console_print("initialized")

    def animate(self, i):
        if self.new_data:

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

            self.axs[0].clear()
            if(latest_time>=10000):
                self.axs[0].set_xlim(latest_time-10000,latest_time)
            self.axs[0].plot(x,accX)
            self.axs[0].set_xlabel(xLabel)
            self.axs[0].set_ylabel("AccX")

            self.axs[1].clear()
            if(latest_time>=10000):
                self.axs[1].set_xlim(latest_time-10000,latest_time)
            self.axs[1].plot(x,magY)
            self.axs[1].set_xlabel(xLabel)
            self.axs[1].set_ylabel("MagY")

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

    def connect_to_client(self):
        while True:
            data, addr = self.sock.recvfrom(1024)
            #self.console_print("Got data from" + str(addr))
            decode_data = data.decode("utf-8")
            #self.console_print(str(decode_data))
            if decode_data[0] == 'L':
                self.sock.sendto(data, addr)
                break

        self.console_print("Recieving Data now")

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
        #self.console_print("in parse_data")
        data = data.decode('utf-8')
        #self.console_print(data)
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
                    self.buffer_head += 1
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
            while self.udp_thread:
                data, addr = self.sock.recvfrom(1024) # buffer size is 1024 bytes
                #self.console_print("recieved data")
                self.parse_data(data)

                #plot data

                #self.send_ack(addr)
        except KeyboardInterrupt:
            self.console_print("Keyboard Interrupt")

    def udp_begin(self):
        self.initialize_udp()
        self.start()

    def algorithm_start(self):
        #analyze data in buffer
        self.console_print("Starting algorithm")
        sample_size = 15
        buffer_tail = sample_size

        while self.algorithm_thread:
            if (self.buffer_head < (sample_size)) or (buffer_tail+1 >= self.buffer_head):
                pass
            else:
                if ( (self.udp_buffer[1][buffer_tail-1]<-30) and 
                (self.udp_buffer[1][buffer_tail] > self.udp_buffer[1][buffer_tail-1]) and 
                (min(self.udp_buffer[1][buffer_tail-sample_size:buffer_tail]) == self.udp_buffer[1][buffer_tail-1]) ):

                    mag_y_slope = (self.udp_buffer[5][buffer_tail]-self.udp_buffer[5][buffer_tail-sample_size])/(sample_size)
                    if mag_y_slope < -0.02:
                        self.console_print("Twist Punch")
                    elif self.udp_buffer[5][buffer_tail] > 0.5:
                        self.console_print("Vertical Punch")
                    else: 
                        self.console_print("Horizontal Punch")
                
                buffer_tail += 1



def main():
    ud = MainClass()

    udp_thread = threading.Thread(target=ud.udp_begin)
    udp_thread.start()

    #start algolithm
    algorithm_thread = threading.Thread(target=ud.algorithm_start)
    algorithm_thread.start()
    try:
        #ud.initialize_visual()
        while(True):
            pass
    except KeyboardInterrupt:
        ud.console_print("Keyboard intterupt")
        ud.algorithm_thread = False
        ud.udp_thread = False
        plt.close()
        ud.write_to_csv()
    finally:
        ud.console_print("Finished")

main()
