import matplotlib.pyplot as plt
import csv

x = []
accX = []
accY = []
accZ = []

magX = []
magY = []
magZ = []

gyroX = []
gyroY = []
gyroZ = []

xLabel = ""

y1Label = ""
y2Label = ""
y3Label = ""

y4Label = ""
y5Label = ""
y6Label = ""

y7Label = ""
y8Label = ""
y9Label = ""

##Save a new file, uncomment the next one
filename = '/Users/ifenta/Documents/GitHub/Strike-Detection/WebSocketServer/input_stream_data.txt'

##Read Other Files
#filename = '/Users/ifenta/Documents/GitHub/Strike-Detection/DataVisualization/Data/horizontal_punch_wpop(16g_16gauss_2000dps).txt'


with open(filename,'r') as csvfile:
    plots = csv.reader(csvfile, delimiter=';')
    count=0
    for row in plots:
        if row[0] == "complete":
            break
        if count==0:
            xLabel+=row[0]
            y1Label+=row[1]
            y2Label+=row[2]
            y3Label+=row[3]
            y4Label+=row[4]
            y5Label+=row[5]
            y6Label+=row[6]
            y7Label+=row[7]
            y8Label+=row[8]
            y9Label+=row[9]
            count+=1
        else:
            x.append(float(row[0]))
            accX.append(float(row[1]))
            accY.append(float(row[2]))
            accZ.append(float(row[3]))
            magX.append(float(row[4]))
            magY.append(float(row[5]))
            magZ.append(float(row[6]))
            gyroX.append(float(row[7]))
            gyroY.append(float(row[8]))
            gyroZ.append(float(row[9]))

accYBuf=[]
magXBuf=[]

sampleSize=10

minFound=False

for i in range(len(x)):

    accYBuf.append(float(accY[i]))
    magXBuf.append(float(magX[i]))
    
    if i<sampleSize-1:
        pass
    else:
        if accY[i-1]>25 and accY[i]<accY[i-1] and max(accYBuf)==accY[i-1]:
            print("Min found at: " + str(x[i-1]) + " ms with val: " + str(accY[i-1]))
            print(accYBuf)
            minFound=True
        ##We are in the spike zone and we found the min of the spike
        if minFound:
            magXSlope=(magX[i]-magX[i-sampleSize-5])/(sampleSize-5)
            magXAvg=(magX[i]+magX[i-sampleSize])/(2)
            print("Time: " + str(x[i]) + " Slope: " + str(magXSlope) + " Avg: " + str(magXAvg) + " GyroY: " + str(gyroY[i-1]))
            print(gyroY[i-sampleSize:i+1])
            if magXSlope>0.01 and gyroY[i-2] > 1000:
                print("Twist Punch")
            elif magXAvg < -0.1:
                print("Vertical Punch")
            else:
                print("Horizontal Punch")

            print("\n\n")
            minFound=False

        accYBuf.pop(0)
        magXBuf.pop(0)
            


## Ploting All Data
fig, axs = plt.subplots(3,3,sharex=True)

axs[0][0].scatter(x,accX, label=y1Label)
axs[0][0].set_xlabel(xLabel)
axs[0][0].legend()
axs[0][0].grid(True)

axs[0][1].scatter(x,accY, label=y2Label)
axs[0][1].set_xlabel(xLabel)
axs[0][1].legend()
axs[0][1].grid(True)

axs[0][2].scatter(x,accZ, label=y3Label)
axs[0][2].set_xlabel(xLabel)
axs[0][2].legend()
axs[0][2].grid(True)




axs[1][0].scatter(x,magX, label=y4Label)
axs[1][0].set_xlabel(xLabel)
axs[1][0].legend()
axs[1][0].grid(True)

axs[1][1].scatter(x,magY, label=y5Label)
axs[1][1].set_xlabel(xLabel)
axs[1][1].legend()
axs[1][1].grid(True)

axs[1][2].scatter(x,magZ, label=y6Label)
axs[1][2].set_xlabel(xLabel)
axs[1][2].legend()
axs[1][2].grid(True)


axs[2][0].scatter(x,gyroX, label=y7Label)
axs[2][0].set_xlabel(xLabel)
axs[2][0].legend()
axs[2][0].grid(True)

axs[2][1].scatter(x,gyroY, label=y8Label)
axs[2][1].set_xlabel(xLabel)
axs[2][1].legend()
axs[2][1].grid(True)

axs[2][2].scatter(x,gyroZ, label=y9Label)
axs[2][2].set_xlabel(xLabel)
axs[2][2].legend()
axs[2][2].grid(True)

plt.show()

