from functions import console_print

class Algorithm():

    def __init__(self, shared_data):
        self.shared_data = shared_data


    def algorithm_start(self):
        #analyze data in buffer
        console_print("Starting algorithm", self.shared_data.device)
        sample_size = 15
        buffer_tail = sample_size

        while self.shared_data.algorithm_thread:
            if(self.shared_data.wifi_connected):
                if (self.shared_data.buffer_head < (sample_size)) or (buffer_tail+1 >= self.shared_data.buffer_head):
                    pass
                else:
                    if ( (self.shared_data.wifi_buffer[2][buffer_tail-1]>25) and 
                    (self.shared_data.wifi_buffer[2][buffer_tail] < self.shared_data.wifi_buffer[2][buffer_tail-1]) and 
                    (max(self.shared_data.wifi_buffer[2][buffer_tail-sample_size:buffer_tail]) == self.shared_data.wifi_buffer[2][buffer_tail-1]) ):

                        mag_x_slope = (self.shared_data.wifi_buffer[4][buffer_tail]-self.shared_data.wifi_buffer[4][buffer_tail-sample_size-5])/(sample_size-5)
                        mag_x_avg = (self.shared_data.wifi_buffer[4][buffer_tail]+self.shared_data.wifi_buffer[4][buffer_tail-sample_size])/(2)
                        if mag_x_slope > 0.01 and self.shared_data.wifi_buffer[8][buffer_tail-2] > 1000:
                            console_print("Twist Punch", self.shared_data.device)
                        elif mag_x_avg < -0.1:
                            console_print("Vertical Punch", self.shared_data.device)
                        else: 
                            console_print("Horizontal Punch", self.shared_data.device)
                    
                    buffer_tail += 1
            else:
                buffer_tail = sample_size