class SharedData():

    def __init__(self,device):
        self.wifi_buffer = [[],[],[],[],[],[],[],[],[],[]]
        self.device = device
        self.buffer_head = 0
        self.wifi_connected = False
        self.algorithm_thread = True
        self.wifi_thread = True
        self.is_alive_thread = True

        self.read_data = False
        self.strike_data = []
        self.strike_labels = []
        self.strike_list = ['horizontal punch', 'vertical punch', 'twist punch']

    def close_threads(self):
        self.algorithm_thread = False
        self.wifi_thread = False
        self.is_alive_thread = False
    