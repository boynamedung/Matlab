 %                      Tinh ma tran W va V sau n buoc huan luyen               %      
 %------------------------------------------------------------------------------%
 %                  Tac gia: Hung Dung Nguyen | MSSV:18059441                   %
 %------------------------------------------------------------------------------%
clear;
clear all;
v_init=[1 2 0;0 1 1;0 0 2];
w_init=[0;0;1];
x_init=zeros(1,3);
for t=1:1:3
    stg_init = ['Nhap vao gia tri x',num2str(t),'='];
    x(1,t)=input(stg_init);
end
lop=input('Nhap so lan huan luyen mang:');
condition=1;
while condition
    for i=1:1:lop
        hesohoc=0.5;
        disp('Truyen thang');
        netq=v_init*x';
        zq=tanh(netq)
        y=w_init'*zq
        yd=x(1,2)+x(1,3)
        disp('Lan truyen nguoc');
        disp('Tai lop 2');
        dw=hesohoc*(yd-y)*zq
        w1update=w_init+dw
        disp('Tai lop 1');
        anet_diff=1-zq.*zq
        sih=anet_diff.*w_init.*(yd-y)
        dv=hesohoc*sih*x
        v1update=v_init+dv
        w_init=w1update;
        v_init=v1update;
    end
    condition=0;
end

