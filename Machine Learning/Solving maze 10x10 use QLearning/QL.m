function Q=QL
Q=zeros(4,100);
k=0;
delta=0.0001;
gamma=0.9;
q=1;
st1='Please type agian to confirm value to finish:';
finish=input(st1);
while(q==1)
%for q=1:15
    k=k+1;
    Qold=Q;
%j=1=>U, j=2=>D, j=3=>L; j=4=>R 
for i=1:100
        if ((i==40)||(i==41)||(i==42)||(i==43))
            r=-2;
        elseif (i==finish)
            r=2;
        elseif ((i==91)||(i==92)||(i==93)||(i==94)||(i==95)||(i==96)||(i==97)||(i==98)||(i==99)||(i==100))
            r=0.5;
        else
            r=1;
        end;
   for j=1:4 
        n=xnext(i,j);
       Qmax=Qold(1,n);
        for ii=2:4
            if (Qmax<Qold(ii,n))
                Qmax=Qold(ii,n);
            end;
        end;
       Q(j,i)=Qold(j,i)+(1/k)*(r+gamma*Qmax-Qold(j,i));
    end;
    end;
    if (norm(Q-Qold)<delta)
        q=0;
    end;
end;


