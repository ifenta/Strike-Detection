import threading
from udp import UDP
from algorithm import Algorithm
from shared_data import SharedData
from functions import write_to_csv,console_print, end_start

class StrikeDetector():

    def __init__(self, device):
        port = 9991 + device
        self.device = device
        self.shared = SharedData(self.device)
        self.wifi = UDP(self.shared, udp_port=port)
        self.alg = Algorithm(self.shared)

    def run(self):
        #start udp thread
        wifi_thread = threading.Thread(target=self.wifi.start_wifi)
        #wifi_thread.daemon = True
        wifi_thread.start()

        #start algolithm
        algorithm_thread = threading.Thread(target=self.alg.algorithm_start)
        #algorithm_thread.daemon = True
        algorithm_thread.start()

        #send alive notice to esp32
        alive_thread = threading.Thread(target=self.wifi.is_alive)
        #alive_thread.daemon = True
        alive_thread.start()

        end_thread = threading.Thread(target=end_start, args=(self.shared,self.device))
        end_thread.start()

    def close_threads(self):
        self.shared.close_threads()

