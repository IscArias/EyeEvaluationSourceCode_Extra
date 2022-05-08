import shutil
import os
import fnmatch

file = open("NormalFundusIzq.txt","r")
f = file.readlines()

newList = []

for line in f:
    newList.append(line.strip())

print (newList)

original = r'C:\Users\acer.LAPTOP-5D7SPG9D\Desktop\ListaFotos\ODIR-5K_Training_Dataset'
target = r"C:\Users\acer.LAPTOP-5D7SPG9D\Desktop\ListaFotos\NormalFundus"

src_files=os.listdir(original)

for file_name in src_files:
    for pattern in newList:
        if fnmatch.fnmatch(file_name,pattern) == True:
            full_file_name = os.path.join(original, file_name)

            if os.path.isfile(full_file_name):
                shutil.copy(full_file_name, target)

