% Homework about design a noron network (Case 1 layer)
% Author: Nguyen Hung Dung MSSV: 18059441
% This program is main program 
% Source code include noronand + noronor + master + random
disp('Please type your choose to select design for noron network');
disp('As 1 is for AND design');
disp('As 2 is for OR design');
disp('Type below');
selection = input('choose= ');
condition = 1;
while condition
    if (selection==1)
        noronand;
        condition=0;
    else
        if (selection==2)
        noronor;
        condition=0;
        else
            disp('Please type again your selection');
            selection = input('choose= ');
        end
    end
end
