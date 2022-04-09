clc;
st='Please type value to start:'; 
xfirst=input(st);
st1='Please type value to finish:';
xfinish=input(st1);
Q=QL;
  f=xfinish;
  i0=xfirst;
  i=xfirst;
 %     disp(['Trang thai dau:',num2str(i0), 'Trang thai ke:', num2str(i), 'Tin hieu dieu khien:', action]);
      while (i~=f)
      [u,j]=max(Q(:,i));
        n=xnext(i,j);
        if (j==1)
            action='Up';
        elseif (j==2)
            action='Down';
        elseif (j==3)
            action='Left';
        else
            action='Right';
        end;
      
      if (i~=i0)
        disp(['The next status:', num2str(i), ', Signal to control:', action]);
      elseif (i==i0)
        disp(['First of status:', num2str(i), ', Signal to control:', action]);  
      end;
   i=n;
      end;
       disp(['The end of status:', num2str(i)]);  
        
        
        