d = input('Enter Length of the object :');
t1 = input(' Enter the distance between  centre of object and source ');
t2 = input('Enter the distance between  centre of object and  detector ');
m = input('Enter the no of detecter ');
n = input(' Order of Matrix (Even): '); 
!phi = input('
if(mod(m,2) == 0)
    j = m/2;
     ans = calc_values(d,t1,t2,m,n,j);
    while(j>=((-m)/2))
        if(j == 0)
            j = j-1;
        end
        t = calc_values(d,t2,t2,m,n,j);
        ans = ans+t;
        clear t;
        j = j-1;
    end
else
    j = (m-1)/2;
    ans = calc_values(d,t2,t2,m,n,j)
    while(j>(-(m-1)/2))
        t = calc_values(d,t2,t2,m,n,j)
        ans = ans +t;
        clear t;
        j = j-1;
    end
end
      disp(ans);
      save testing2.dat ans -ASCII
      type testing2.dat
