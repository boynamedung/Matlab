% Homework about noron
% Author: Nguyen Hung Dung MSSV: 18059441
% This program is a function called "noron_and" link to master.m 
function noronand
    clear;
    clc;
    w1=random(-100,100,1); %create random w1 for lauching
    w2=random(-100,100,1); %create random w2 for lauching
    b=random(-100,100,1); %create random b for lauching
    y=[0 0 0 0];
    x1=[0 0 1 1];
    x2=[0 1 0 1];
    yd=[0 0 0 1]; % result match with AND-design
    condition=1;
    while condition
        zin=-x1*w1-x2*w2;
        for i=1:4
            if zin(i)<=b
               y(i)=1;
            else
               y(i)=0;
            end
        end
        disp('Output y');    
        disp(y);
            if(y==yd)
                condition=0;
            else
                disp('Error. Loop with another value for w1, w2, theta b');
                w1=random(-100,100,1); %create random w1 for lauching
                w2=random(-100,100,1); %create random w2 for lauching
                b=random(-100,100,1); %create random b for lauching
            end
    end
    disp('Noron network for AND is');
    disp('Value w1, w2');
    disp(w1);
    disp(w2);
    disp('Value theta b');
    disp(b);
end