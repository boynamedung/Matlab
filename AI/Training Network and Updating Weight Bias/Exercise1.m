 % Tim huan luyen ma tran Weight và Bias Bai tap 1 (Tri Tue Nhan Tao) 
 %------------------------------------------------------------------------------%
 %                  Tac gia: Hung Dung Nguyen | MSSV:18059441                   %
 % Tham khao trang mathworks:                                                   % 
 %https://www.mathworks.com/help/deeplearning/ug/perceptron-neural-networks.html%
 %------------------------------------------------------------------------------%
clc;
clear;
net = perceptron;
p = [[-1;1] [-1;-1] [0;0] [1;1]]; %Khai bao gia tri ngo vao p1,p2,p3,p4
t = [1 1 0 0]; % Khai bao gia tri t1,t2,t3,t4
net.trainParam.epochs = 1000;  %Gia tri lap 1000
net = train(net,p,t); % Train mang voi cac thong so da khai bao v?i Weight là Bias là zero
w = net.iw{1,1} % xuat ma tran Weight sau khi hoan thanh train
b = net.b{1} % xuat ma tran Bias sau khi hoan thanh train
