from datetime import datetime

### Logger w/ Timestamp ###
def console_print(message, device):
    #global test_print_counter
    now = datetime.now()

    timestamp = datetime.timestamp(now)
    dt_object = datetime.fromtimestamp(timestamp)

    print(str(dt_object) + "    " + "Device " + str(device) + ":     " + message)


### Write WiFi buffer to CSV at end ###
def write_to_csv(shared, device):
    wifi_buffer = shared.wifi_buffer
    filename = "input_stream_data_device_" + str(device) + ".txt"
    f= open(filename,"w+")
    
    f.write("Time(ms);AccX(m/s^2);AccY(m/s^2);AccZ(m/s^2);MagX(gauss);MagY(gauss);MagZ(gauss);GyroX(dps);GyroY(dps);GyroZ(dps)\n")

    #write data to csv
    for i in range(len(wifi_buffer[0])):
        input_data = ""
        for j in range(10):
            input_data += str(wifi_buffer[j][i])
            if(j<9):
                input_data += ';'
        input_data += '\n'
        f.write(input_data)
    
    f.close()
    console_print("completed writing to csv", device)
        
def end_start(shared, device):
    func_run = True
    
    while func_run:
        if(not shared.is_alive_thread 
        and not shared.wifi_thread 
        and not shared.algorithm_thread):
            write_to_csv(shared, device)
            console_print("Finished Detector", device)
            func_run = False
        pass