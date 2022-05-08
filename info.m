close all
clc
clear all

%Load the corresponding netTransfer
load netTransfer2.mat;

%Plot the confussion matrix, target and output values are swap
%to obtain the "know" values as rows and "predicted" values as columns
plotconfusion(YPred,YValidation)