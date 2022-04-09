%   Huan luyen mang lan truyen nguoc va ve do thi ham sau huan luyen           %      
%------------------------------------------------------------------------------%
%                  Tac gia: Hung Dung Nguyen | MSSV:18059441                   %
%------------------------------------------------------------------------------%
x=-2:0.02:2;
y=1+sin((3.14/4)*x);
sample=-2:0.02:2; % tao gia tri chay tu -2 den 2 buoc nhay 0.2
func=1+sin((3.14/4)*sample); % ham xap xi
m=2;% so noron lop an 
net=newff(sample,func,m,{'logsig'  'purelin'}); % voi lop 1 la logsig, voi lop 2 la purelin
net=train(net,sample,func); % huan luyen mang voi weight va bias khoi tao la 0
result=sim(net,x); %danh gia ket qua sau huan luyen
figure('Name','Danh gia mang sau huan luyen');
plot(x,y,'k',x,result,'m')
title('Danh gia ham sau huan luyen')
legend('Ham muc tieu','Ham xap xi')
xlabel('p')
ylabel('a^2')




