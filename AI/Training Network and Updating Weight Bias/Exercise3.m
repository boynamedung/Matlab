 % Tim huan luyen ma tran Weight và Bias Vi du 3 (Tri Tue Nhan Tao) 
 %------------------------------------------------------------------------------%
 %                  Tac gia: Hung Dung Nguyen | MSSV:18059441                   %
 %------------------------------------------------------------------------------%
clc;
clear;
w10=[-0.27; -0.41]; % khoi tao w1 
b10=[-0.48; -0.13]; % khoi tao b1
w20=[0.09 -0.17]; % khoi tao w2
b20=0.48; % khoi tao b2
alpha=0.1; % he so hoc alpha
step=0; % buoc lap
for p=-2:0.2:2
    step=step+1; % tang buoc lap + 1 khi p chay t? -2 den 2
    a0=p;
    a1=logsig(w10*a0+b10); % dau ra lop thu nhat
    a2=purelin(w20*a1+b20); % dau ra lop thu hai 
    e=(1+sin((3.14/4)*p))-a2; % gia tri cua ham loi
    f1=(1-a1).*a1; %dao ham ham lop thu 1
    f2=1; %dao ham ham thu lop thu 2
    s2=-2*f2*e; % lan truyen nguoc lop thu 2
    s1=f1.*w20'.*s2; % lan truyen nguoc lop thu 1
    w2upd=w20-alpha*s2*a1 % cap nhat trong so w2
    b2upd=b20-alpha.*s2; % cap nhat trong so b2
    w1upd=w10-alpha.*s1.*a0'; % cap nhat trong so w1
    b1upd=b10-alpha.*s1; % cap nhat trong so b1
    w10=w1upd;
    w20=w2upd;
    b10=b1upd;
    b20=b2upd;
    disp('Lan cap nhat trong so Weight va Bias');
    disp(step);
    disp('w1 sau khi update trong so');
    disp(w10);
    disp('b1 sau khi update trong so');
    disp(b10);
    disp('w2 sau khi update trong so');
    disp(w20);
    disp('b2 sau khi update trong so');
    disp(b20);
end

