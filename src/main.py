import threading
from strike_detector import StrikeDetector

devices = 1

if(__name__ == "__main__"):
    sd = [StrikeDetector(x) for x in range(devices)]

    try:
        for x in range(devices):
            sd[x].run()

        while(True):
            sd[0].main_ml_storing()
    except KeyboardInterrupt:
        print("Main - Keyboard Interrupt")
    finally:
        sd[0].store_ml_data()
        for x in range(devices):
            sd[x].close_threads()
        print("Finished main program")