% Homework about noron
% Author: Nguyen Hung Dung MSSV: 18059441
% This program is create a random value for w1,w2,b
% This program is a function called "random" link to noronand + noronor
function a = random(xmin,xmax,n)
    clc;
    a=round(xmin+rand(1,n)*(xmax-xmin));
end