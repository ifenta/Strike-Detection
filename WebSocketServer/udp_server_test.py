import socket
import threading
from time import sleep

all_connections = []
all_addresses = []
threads = []


def accepting_connections():
    global sock
    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM) 
    sock.bind(("", 9999))

    while True:
        try:
            data, addr = sock.recvfrom(1024)
            if(addr not in all_addresses):
                decode_data = data.decode('utf-8')
                print(decode_data)
                if(decode_data[0] == 'L'):
                    all_addresses.append(addr)

                    t = threading.Thread(target=read_connections,args=(all_addresses.index(addr),))
                    t.start()
                    
                    sock.sendto(data, addr)
                    print("Connection added to buffer " + str(conn))
        except:
            continue


def read_connections(i):
    global sock
    print("Creating thread " + str(i))
    while True:
        data,addr = sock.recvfrom(1024)
        if addr in all_addresses:
            data_decode = data.decode('utf-8')
            print(data_decode + "       addr: " + str(addr))
            sock.sendto(data,addr)

try:
    accepting_connections()
except KeyboardInterrupt:
    print("Keyboard")
    quit()

        


    