import socket
import os

UDP_IP = ""
UDP_PORT = 9999

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM) 
sock.bind((UDP_IP, UDP_PORT))

f= open("position.txt","w+")

while True:
    data, addr = sock.recvfrom(1024)
    print("Got data from" + str(addr))
    decode_data = data.decode("utf-8")
    print(decode_data)
    if decode_data[0] == 'H':
        sock.sendto(data, addr)
        break

print("Recieving Data now")

try:
    while True:
        data, addr = sock.recvfrom(1024) # buffer size is 1024 bytes
        decode_data = data.decode("utf-8")
        if decode_data[0] == 'c':
            os.system("python3 /Users/ifenta/Documents/GitHub/Strike-Detection/DataVisualization/showingData.py &")
            break
        f.write(data.decode("utf-8"))
        #print("received message:" + str(data.decode("utf-8")))
        #sock.sendto(data, addr)
except KeyboardInterrupt:
    print("Keyboard intterupt")
finally:
    f.close()
    print("Finished")
    quit()