class SharedData():

    def __init__(self,device):
        self.wifi_buffer = [[],[],[],[],[],[],[],[],[],[]]
        self.device = device
        self.buffer_head = 0
        self.wifi_connected = False
        self.algorithm_thread = True
        self.wifi_thread = True
        self.is_alive_thread = True

    def close_threads(self):
        self.algorithm_thread = False
        self.wifi_thread = False
        self.is_alive_thread = False
    