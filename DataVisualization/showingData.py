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
filename = '/Users/ifenta/Documents/GitHub/Strike-Detection/WebSocketServer/position.txt'

##Read Other Files
##filename = 'twist_punch_wpop(16g_16gauss_2000dps).txt'


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
            x.append(int(row[0]))
            accX.append(float(row[1]))
            accY.append(float(row[2]))
            accZ.append(float(row[3]))
            magX.append(float(row[4]))
            magY.append(float(row[5]))
            magZ.append(float(row[6]))
            gyroX.append(float(row[7]))
            gyroY.append(float(row[8]))
            gyroZ.append(float(row[9]))

accXBuf=[]
magYBuf=[]

sampleSize=15

minFound=False

for i in range(len(x)):

    accXBuf.append(float(accX[i]))
    magYBuf.append(float(magY[i]))
    
    if i<sampleSize-1:
        pass
    else:
        if accX[i-1]<-15 and accX[i]>accX[i-1] and min(accXBuf)==accX[i-1]:
            ##print("Min found at: " + str(x[i-1]) + " ms with val: " + str(accX[i-1]))
            ##print(accXBuf)
            minFound=True
        ##We are in the spike zone and we found the min of the spike
        if minFound:
            magYSlope=(magY[i]-magY[i-sampleSize])/(sampleSize)
            ##print("Time: " + str(x[i]) + " Slope: " + str(magYSlope))
            if magYSlope<-0.01:
                print("Twist Punch")
            elif magY[i]>0.5:
                print("Vertical Punch")
            else:
                print("Horizontal Punch")
            minFound=False

        accXBuf.pop(0)
        magYBuf.pop(0)
            


## Ploting All Data
fig, axs = plt.subplots(3,1,sharex=True)

axs[0].scatter(x,accX, label=y1Label)
axs[0].scatter(x,accY, label=y2Label)
axs[0].scatter(x,accZ, label=y3Label)
axs[0].set_xlabel(xLabel)
axs[0].set_ylabel("Accleration(m/s^2)")
axs[0].legend()
axs[0].grid(True)

axs[1].scatter(x,magX, label=y4Label)
axs[1].scatter(x,magY, label=y5Label)
axs[1].scatter(x,magZ, label=y6Label)
axs[1].set_xlabel(xLabel)
axs[1].set_ylabel("Magnetometer (gauss)")
axs[1].legend()
axs[1].grid(True)

axs[2].scatter(x,gyroX, label=y7Label)
axs[2].scatter(x,gyroY, label=y8Label)
axs[2].scatter(x,gyroZ, label=y9Label)
axs[2].set_xlabel(xLabel)
axs[2].set_ylabel("Gyro (dps)")
axs[2].legend()
axs[2].grid(True)

plt.show()

