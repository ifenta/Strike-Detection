import socket
import threading
from time import sleep

all_connections = []
all_addresses = []
threads = []


def connecting():
    global sock
    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM) 

    while True:
        sock.sendto("Look at me!".encode('utf-8'), ("", 9999))
        sleep(2)

try:
    connecting()
except KeyboardInterrupt:
    print("Keyboard")
    quit()


        


    