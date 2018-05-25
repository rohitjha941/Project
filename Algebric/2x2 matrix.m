d = input('Enter Length of the object : ');
t1 = input(' Enter the distance between  centre of object and source ');
t2 = input('Enter the distance between  centre of object and  detector ');
m = input('Enter the no of detecter ');
theta_max = atan(d/((2*t1)+d))
z = m;
for i = (-(m-1)/2):((m-1)/2)
    theta = (i/m) *theta_max;
    if(i==0)
            x(z,2) = d/2;
            x(z,1)=d/2;
            x(z,4) =d/2;
            x(z,3) = d/2;
    elseif(i>0)
            x(z,1) = (d/(2*cos(theta)));
            x(z,2) = x(z,1);
            x(z,3)=0;
            x(z,4)=0;
    elseif(i<0)
            x(z,3) = (d/(2*cos(theta))) 
            x(z,4) =x(z,3);
            x(z,1)=0;
            x(z,2)=0;    
    end
    
    z = z-1;
    
end
 
save testing.dat x -ASCII
type testing.dat
