function rate_selection_algorithm
% Thuat toan chon loc ti le (Tri Tue Nhan Tao)
 %-----------------------------------------------------------------------%
 %               Tac gia: Hung Dung Nguyen | MSSV:18059441               %
 % Tham khao muc Initialize Population, Crossover va Mutation tu tac gia %
 %        Shu-Chuan Chu, Chin-Shiuh Shieh, and John F. Roddick           %
 %-----------------------------------------------------------------------%
  % Khoi tao cac thong so
 accuracy = 1; % Do chinh xac
 start = 0; % diem bat dau
 finish = 31; % diem ket thua
 population = 4; % ca the
 CR = 0.1; % he so lai ghep
 MR = 0.05; % he so dot bien
 bit = round(log2((finish-start)/accuracy)); % do dai bit cua nst
 disp('Do dai bit cua NST'); bit
 c = zeros(population,bit); 
 sum = zeros(1, population);
 sum1 = zeros(1, population);
 sum2 = zeros(1, population);
 fi = zeros(1, population); % gia tri thich nghi 
 si = zeros(1, population);
 pi = zeros(1, population); % xac suat lua chon cac ca the
 ni = zeros(1, population); % ky vong cua ca the chon vao vong tiep theo
 % Buoc 1: khoi tao quan the ngau nhien
 for i=1:1:population     
    for j=1:1:bit         
        if(rand(1)<0.5)             
            c(i,j)=0;         
        else
            c(i,j)=1;         
        end
    end
 end
 disp('Quan the moi tao la'); c
 % Giai ma cac nst
 for i=1:1:population     
    for j=1:1:bit
        if (i == 1)
            sum(1,1) = sum(1,1) + ((start*((2^bit)-1))+(finish-start)/((2^bit)-1))*(1*c(i,j)*(2^(bit-j)));
        else
            if(i == 2)
                sum(1,2) = sum(1,2) + ((start*((2^bit)-1))+(finish-start)/((2^bit)-1))*(1*c(i,j)*(2^(bit-j)));
            else
                if(i == 3)
                    sum(1,3) = sum(1,3) + ((start*((2^bit)-1))+(finish-start)/((2^bit)-1))*(1*c(i,j)*(2^(bit-j)));
                else
                    sum(1,4) = sum(1,4) + ((start*((2^bit)-1))+(finish-start)/((2^bit)-1))*(1*c(i,j)*(2^(bit-j)));
                end
            end
        end
    end
 end
 disp('Giai ma lan luot cac NST tu ma tran C chua NST tu hang 1 den 4'); sum
% Buoc 2: danh gia do thich nghi cua ca the trong quan the
for i=1:1:4
    fi(1,i) = (sum(1,i)^2);
end
disp('Gia tri fi(x)=x^2'); fi
% Buoc 3: phat sinh quan the moi
sum_ofsigma_f = 0;
for i=1:1:4
    sum_ofsigma_f = sum_ofsigma_f + fi(1,i);
end
for i=1:1:4
    si(1,i)=0+((fi(1,i))/sum_ofsigma_f);
end
for i=1:1:4
    pi(1,i)=((fi(1,i))/sum_ofsigma_f); % xac suat lua chon ca the
end
disp('Xac suat lua chon ca the'); pi
disp('Xac suat '); si
for i=1:1:4
    ni(1,i)=pi(1,i)*population; % ky vong cua ca the chon vao vong tiep theo
end
disp('ky vong cua ca the chon vao vong tiep theo'); ni
max = ni(1,4);
min = ni(1,4);
locate_max = population;
locate_min = population;
for i=1:1:(population-1)
    if (max<ni(1,i))
        max = ni(1,i);
        locate_max = i;
    end
end
for i=1:1:(population-1)
    if (min>ni(1,i))
        min = ni(1,i);
        locate_min = i;
    end
end
for i=1:1:bit
    c(locate_min,i)=c(locate_max,i);
end
disp('Quan the moi hinh thanh tu nhung ca the da chet va ca the manh'); c
% tao quan the moi va giai ma lai
for i=1:1:population     
    for j=1:1:bit
        if (i == 1)
            sum1(1,1) = sum1(1,1) + ((start*((2^bit)-1))+(finish-start)/((2^bit)-1))*(1*c(i,j)*(2^(bit-j)));
        else
            if(i == 2)
                sum1(1,2) = sum1(1,2) + ((start*((2^bit)-1))+(finish-start)/((2^bit)-1))*(1*c(i,j)*(2^(bit-j)));
            else
                if(i == 3)
                    sum1(1,3) = sum1(1,3) + ((start*((2^bit)-1))+(finish-start)/((2^bit)-1))*(1*c(i,j)*(2^(bit-j)));
                else
                    sum1(1,4) = sum1(1,4) + ((start*((2^bit)-1))+(finish-start)/((2^bit)-1))*(1*c(i,j)*(2^(bit-j)));
                end
            end
        end
    end
end
disp('Giai ma cac NST moi'); sum1
 % Lai ghep  
     for i=1:1:population         
        for j =1:1:bit             
            if (rand(1)<CR)                 
                c(i,j)=1-c(i,j);             
            end
        end
     end
disp('Cac NST sau lai ghep'); c
 % Dot bien   
    for i=1:1:population        
        for j =1:1:bit           
            if (rand(1)<MR)                 
                c(i,j)=1-c(i,j);             
            end
        end
    end
     disp('Cac NST sau dot bien voi xac suat dot bien la gia tri MR se dot bien ngau nhien'); c 
  for i=1:1:population     
    for j=1:1:bit
        if (i == 1)
            sum2(1,1) = sum2(1,1) + ((start*((2^bit)-1))+(finish-start)/((2^bit)-1))*(1*c(i,j)*(2^(bit-j)));
        else
            if(i == 2)
                sum2(1,2) = sum2(1,2) + ((start*((2^bit)-1))+(finish-start)/((2^bit)-1))*(1*c(i,j)*(2^(bit-j)));
            else
                if(i == 3)
                    sum2(1,3) = sum2(1,3) + ((start*((2^bit)-1))+(finish-start)/((2^bit)-1))*(1*c(i,j)*(2^(bit-j)));
                else
                    sum2(1,4) = sum2(1,4) + ((start*((2^bit)-1))+(finish-start)/((2^bit)-1))*(1*c(i,j)*(2^(bit-j)));
                end
            end
        end
    end
  end
  disp('Giai ma cac NST sau dot bien'); sum2
for i=1:1:4
    fi(1,i) = (sum2(1,i)^2);
end
sum_ofsigma_f = 0;
for i=1:1:4
    sum_ofsigma_f = sum_ofsigma_f + fi(1,i);
end
for i=1:1:4
    pi(1,i)=((fi(1,i))/sum_ofsigma_f);
end
for i=1:1:4
    ni(1,i)=pi(1,i)*population;
end
% Buoc 4: danh gia quan the moi 
max = ni(1,4);
locate_max = population;
for i=1:1:(population-1)
    if (max<ni(1,i))
        max = ni(1,i);
        locate_max = i;
    end
end
disp('Ca the co NST dat gia tri lon nhat'); c(locate_max,[1:5])
disp('Gia tri giai ma'); sum2(1,locate_max)
disp('Vay gia tri fmax'); (sum2(1,locate_max)^2)
kq = sum2(1,locate_max);
if (kq==31)
    disp('Nghiem nay trung voi giai tich cua bai toan f(x)=x^2, x thuoc [0,31]');
else
    disp('Nghiem nay khong trung voi giai tich cua bai toan f(x)=x^2, x thuoc [0,31]');
end


     
 

 
 
 

 
 
 