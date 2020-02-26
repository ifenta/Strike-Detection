class strike_alg():

    def __init__(self, time, accX, magY):

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

            self.accXBuf.append(float(self.accX[i]))
            self.magYBuf.append(float(self.magY[i]))
            
            if i<self.sampleSize-1:
                pass
            else:
                if self.accX[i-1]<-15 and self.accX[i]>self.accX[i-1] and min(self.accXBuf)==self.accX[i-1]:
                    ##print("Min found at: " + str(x[i-1]) + " ms with val: " + str(accX[i-1]))
                    ##print(accXBuf)
                    minFound=True
                ##We are in the spike zone and we found the min of the spike
                if minFound:
                    magYSlope=(self.magY[i]-self.magY[i-self.sampleSize])/(self.sampleSize)
                    ##print("Time: " + str(x[i]) + " Slope: " + str(magYSlope))
                    if magYSlope<-0.01:
                        output.append((self.time[i-1], "Twist Punch"))
                        #print("Twist Punch")
                    elif self.magY[i]>0.5:
                        output.append((self.time[i-1], "Vertial Punch"))
                        #print("Vertical Punch")
                    else:
                        output.append((self.time[i-1], "Horizontal Punch"))
                        #print("Horizontal Punch")
                    minFound=False

                self.accXBuf.pop(0)
                self.magYBuf.pop(0)

        return output