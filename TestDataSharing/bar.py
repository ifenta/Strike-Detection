class Bar():

    def __init__(self,buf):
        self.buf = buf

    def add_three(self, pos=-1):
        if(pos ==-1):
            for x in range(len(self.buf)):
                self.buf[x] += 3
        elif(pos<len(self.buf) and pos >-1):
            self.buf[pos] += 3
        else:
            print("error")
            return

        print(self.buf)

    def get_buf(self):
        print(self.buf)