import threading
import random as rand
from time import sleep
import pandas as pd
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
        #algorithm_thread = threading.Thread(target=self.alg.algorithm_start)
        #algorithm_thread.daemon = True
        #algorithm_thread.start()

        #send alive notice to esp32
        alive_thread = threading.Thread(target=self.wifi.is_alive)
        #alive_thread.daemon = True
        alive_thread.start()

        end_thread = threading.Thread(target=end_start, args=(self.shared,self.device))
        end_thread.start()

    def close_threads(self):
        self.shared.close_threads()

    def main_ml_storing(self):
        strike_index = rand.randint(0,len(self.shared.strike_list)-1)
        selected_strike = self.shared.strike_list[strike_index]
        info = print("SELECTED STRIKE -    " + selected_strike)
        input("PRESS ENTER WHEN READY")
        print('3')
        sleep(1)
        print('2')
        sleep(1)
        print('1')
        sleep(1)
        print('GO')
        self.shared.read_data = True
        sleep(1)
        self.shared.read_data = False
        while True:
            info = input("WOULD YOU LIKE TO REDO READING? (Y or N)")
            if info == 'Y':
                print("STORING DATA")
                self.shared.strike_data.append(self.shared.wifi_buffer)
                self.shared.strike_labels.append(selected_strike)
                self.shared.wifi_buffer = [[],[],[],[],[],[],[],[],[],[]]
                break
            elif info == 'N':
                print("NOT STORING")
                break
            else:
                print("INPUT Y OR N")
        
        input("PRESS ENTER IF YOU WANT TO READ AGAIN")

    def store_ml_data(self):
        print("STORING PANDA DATAFRAME")
        df = pd.DataFrame({'data':self.shared.strike_data, 'label':self.shared.strike_labels})
        df.to_csv('strike_data_for_ml.csv', index=False)