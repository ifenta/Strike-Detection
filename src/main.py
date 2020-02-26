import plot_data
import read_csv
import strike_algorithm
import udp_server

filename = '/Users/ifenta/Documents/GitHub/Strike-Detection/src/position.txt'

#serv = udp_server.server(filename)
#serv.connection_initialization()
#serv.read_data()

read = read_csv.read_csv(filename, 10)
read.read()

strike = strike_algorithm.strike_alg(read.data[0], read.data[1], read.data[5])
print(strike.determine_strikes())

plot = plot_data.plot(read.labels,read.data)
plot.show_data()