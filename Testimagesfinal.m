%Code by Isaac Arias S - YachayTech University
%Biomedical Engineer Student.
%School of Biological Sciences and Engineering.

clc;close all;clear all;
load netTransfer5; % Database se puede reemplazar por cualquier modelo entrenado
sample_image_folder = fullfile('C:\Users\acer.LAPTOP-5D7SPG9D\Desktop\Isaac\YachayTech\8vo Semestre\SIGNAL THEORY\Paper');  
[filename,user_canceled] = imgetfile('InitialPath',sample_image_folder);% pide abrir una imagen por ventana y la almacena
es = imread(filename);%abre la imagen que esta en el mismo directorio del codigo actual. O se puede especificar la dirrecion del fichero
es=imresize(es,[227 227]);% cambia el tamaño de la imagen
[label,scores]=classify(netTransfer5,es);% compara y clasifica la imagen con la base de datos entrenada
classNames = netTransfer5.Layers(end).ClassNames;
imshow(es)

title("\color{red}  "+ (string(label)) +" \color{black}Porcentaje de predicción "...
    +num2str(100*scores(classNames == label),3)+ "%");

