import matplotlib.pyplot as plt

class PlotData():

    def __init__(self,shared_data):
        self.shared_data = shared_data

    def plot(self, data=None):
        if(data == None):
            data = self.shared_data.wifi_buffer

        fig, axs = plt.subplots(3,1,sharex=True)

        x = data[0]
        accX = data[1]
        accY = data[2]
        accZ = data[3]
        magX = data[4]
        magY = data[5]
        magZ = data[6]
        gyroX = data[7]
        gyroY = data[8]
        gyroZ = data[9]

        xLabel = 'time'
        y1Label = 'accX'
        y2Label = 'accY'
        y3Label = 'accZ'
        y4Label = 'magX'
        y5Label = 'magY'
        y6Label = 'magZ'
        y7Label = 'gyroX'
        y8Label = 'gyroY'
        y9Label = 'gyroZ'

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
        
if(__name__ == "__main__"):

    import pandas as pd
    import ast
   
    delete_index = []

    strike_list = ['jab', 'upper', 'hook']

    #df = pd.read_csv('strike_data_for_ml.csv')
    df = pd.read_csv('total_strike_data.csv')

    index = 650
    data = ast.literal_eval(df['data'][index])
    print("Index: " + str(index) + "    Label: " + str(df['label'][index]))

    fig, axs = plt.subplots(3,1,sharex=True)

    x = data[0]
    accX = data[1]
    accY = data[2]
    accZ = data[3]
    magX = data[4]
    magY = data[5]
    magZ = data[6]
    gyroX = data[7]
    gyroY = data[8]
    gyroZ = data[9]

    xLabel = 'time'
    y1Label = 'accX'
    y2Label = 'accY'
    y3Label = 'accZ'
    y4Label = 'magX'
    y5Label = 'magY'
    y6Label = 'magZ'
    y7Label = 'gyroX'
    y8Label = 'gyroY'
    y9Label = 'gyroZ'

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


