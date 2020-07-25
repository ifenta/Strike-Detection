import csv
import time

class read_csv():

    def __init__(self, filename, amount_of_data_points):
        self.filename = filename

        # data = [[time], [accX], [accY], [accZ], [magX], [magY], [magZ], [gyroX], [gyroY], [gyroZ]]
        self.data = []
        self.labels = []
        self.amount_of_data_points = amount_of_data_points

    def read(self):
        with open(self.filename,'r') as csvfile:
            # Seperate data in rows by semi-colon to array
            plots = csv.reader(csvfile, delimiter=';')
            count=0
            for row in plots:
                # Finish when complete is read
                if row[0] == "complete":
                    break

                # First row is labels
                if count==0:
                    for i in range(self.amount_of_data_points):
                        self.labels.append(row[i])
                        self.data.append([])
                    count+=1
                
                # Add data to array
                else:
                    for i in range(self.amount_of_data_points):
                        if i==0:
                            self.data[i].append(int(row[i]))
                        else:
                            self.data[i].append(float(row[i]))
                        
