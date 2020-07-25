class strike_alg():

    def __init__(self, time, accX, magY):

        # Data necessary to determine types of punches
        self.time = time
        self.accX = accX
        self.magY = magY

        self.accXBuf=[]
        self.magYBuf=[]
        self.sampleSize=15

    def determine_strikes(self):    

        minFound=False
        output = []

        for i in range(len(self.time)):

            # Add data to buffers
            self.accXBuf.append(float(self.accX[i]))
            self.magYBuf.append(float(self.magY[i]))
            
            # Dont do anything until buffer is full
            if i<self.sampleSize-1:
                pass
            else:
                # Check if previous data point is
                #   - accX is greater than abs of threshold (15)
                #   - previous data point is less than current data point
                #   - previous data point is smallest in buffer
                if self.accX[i-1]<-15 and self.accX[i]>self.accX[i-1] and min(self.accXBuf)==self.accX[i-1]:
                    ##print("Min found at: " + str(x[i-1]) + " ms with val: " + str(accX[i-1]))
                    ##print(accXBuf)
                    minFound=True
                ##We are in the spike zone and we found the min of the spike
                if minFound:
                    # Find slope of magY 
                    magYSlope=(self.magY[i]-self.magY[i-self.sampleSize])/(self.sampleSize)
                    ##print("Time: " + str(x[i]) + " Slope: " + str(magYSlope))
                    # If slope of magY is a sharp negative value on impact, the hand twist
                    if magYSlope<-0.01:
                        output.append((self.time[i-1], "Twist Punch"))
                        #print("Twist Punch")
                    # If the magnitude of magY is higher than a threshold on impact, hand punching in vertical position
                    elif self.magY[i]>0.5:
                        output.append((self.time[i-1], "Vertial Punch"))
                        #print("Vertical Punch")
                    # The only other kind of punch ther is is a horizontal punch
                    else:
                        output.append((self.time[i-1], "Horizontal Punch"))
                        #print("Horizontal Punch")
                    minFound=False

                self.accXBuf.pop(0)
                self.magYBuf.pop(0)

        return output