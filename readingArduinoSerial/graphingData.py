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
##filename = 'positions.txt'

##Read Other Files
filename = 'still_hand_vertical(16g_16gauss_2000dps).txt'


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

fig, axs = plt.subplots(3,1,sharex=True)

axs[0].plot(x,accX, label=y1Label)
axs[0].plot(x,accY, label=y2Label)
axs[0].plot(x,accZ, label=y3Label)
axs[0].set_xlabel(xLabel)
axs[0].set_ylabel("Accleration(m/s^2)")
axs[0].legend()
axs[0].grid(True)

axs[1].plot(x,magX, label=y4Label)
axs[1].plot(x,magY, label=y5Label)
axs[1].plot(x,magZ, label=y6Label)
axs[1].set_xlabel(xLabel)
axs[1].set_ylabel("Magnetometer (gauss)")
axs[1].legend()
axs[1].grid(True)

axs[2].plot(x,gyroX, label=y7Label)
axs[2].plot(x,gyroY, label=y8Label)
axs[2].plot(x,gyroZ, label=y9Label)
axs[2].set_xlabel(xLabel)
axs[2].set_ylabel("Gyro (dps)")
axs[2].legend()
axs[2].grid(True)

plt.show()
