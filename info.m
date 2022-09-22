%Code by Isaac Arias S - YachayTech University
%Biomedical Engineer Student.
%School of Biological Sciences and Engineering.

close all;clc;clear all

%Load the corresponding netTransfer
load netTransfer5.mat;

%Plot the confussion matrix, target and output values are swap
%to obtain the "know" values as rows and "predicted" values as columns
plotconfusion(YPred,YValidation)