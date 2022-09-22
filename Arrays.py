##Code by Isaac Arias S - YachayTech University
##Biomedical Engineer Student.
##School of Biological Sciences and Engineering.

import shutil
import os
import fnmatch

file = open("TrainHRF.txt","r")
f = file.readlines()

newList = [] 

for line in f:
    newList.append(line.strip() + ".jpg") ##Add the correct format file

print (newList)

##Add the correct directory direction
original = r'C:\Users\acer.LAPTOP-5D7SPG9D\Desktop\resized_train_19'
target = r"C:\Users\acer.LAPTOP-5D7SPG9D\Desktop\Train_HRF"

src_files=os.listdir(original)

for file_name in src_files:
    for pattern in newList:
        if fnmatch.fnmatch(file_name,pattern) == True:
            full_file_name = os.path.join(original, file_name)

            if os.path.isfile(full_file_name):
                shutil.copy(full_file_name, target)

