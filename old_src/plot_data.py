import matplotlib.pyplot as plt

class plot():

    def __init__(self, labels, data):
        self.fig, self.axs = plt.subplots(3,1,sharex=True)
        self.labels = labels
        self.data = data

    def show_data(self):
        # creating scatter plot for different, related data (accX, accY, accZ)
        self.axs[0].scatter(self.data[0],self.data[1], label=self.labels[1])
        self.axs[0].scatter(self.data[0],self.data[2], label=self.labels[2])
        self.axs[0].scatter(self.data[0],self.data[3], label=self.labels[3])
        # Set x axis label
        self.axs[0].set_xlabel(self.labels[0])
        # Set y axis label
        self.axs[0].set_ylabel("Accleration(m/s^2)")
        # Set legend
        self.axs[0].legend()
        # Add grid to graph
        self.axs[0].grid(True)

        self.axs[1].scatter(self.data[0],self.data[4], label=self.labels[4])
        self.axs[1].scatter(self.data[0],self.data[5], label=self.labels[5])
        self.axs[1].scatter(self.data[0],self.data[6], label=self.labels[6])
        self.axs[1].set_xlabel(self.labels[0])
        self.axs[1].set_ylabel("Magnetometer (gauss)")
        self.axs[1].legend()
        self.axs[1].grid(True)

        self.axs[2].scatter(self.data[0],self.data[7], label=self.labels[7])
        self.axs[2].scatter(self.data[0],self.data[8], label=self.labels[8])
        self.axs[2].scatter(self.data[0],self.data[9], label=self.labels[9])
        self.axs[2].set_xlabel(self.labels[0])
        self.axs[2].set_ylabel("Gyro (dps)")
        self.axs[2].legend()
        self.axs[2].grid(True)

        # Show graph
        plt.show()