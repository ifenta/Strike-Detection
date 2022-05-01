from os import listdir
from os.path import isfile, join

onlyfiles = [f for f in listdir(mypath) if isfile(join(mypath, f))]

#wf = open("total_strike_data.csv", "a")
data_count = 0

for name in onlyfiles:
    if "strike_data_for_ml" in name:
        rf = open(name, "r")
        i=0
        for data in rf.readlines():
            if(i!=0):
                wf.write(data)
                data_count+=1
            i+=1
        rf.close()

wf.close()
print("data count: " + str(data_count))
