function [res] = calc_values( d,t1,t2,m,n,j,phi,theta_max)
phi = degtorad(phi);
theta_max = degtorad(theta_max);

                theta = (j/m)*theta_max;
                theta_org = theta;
                theta = abs(theta);
                theta = 2*theta;
                theta = theta-phi;
                pi = atan(1.0) * 4;
                h=t1*(cos(pi-phi)+1);
                g=t1*(sin(pi-phi));
                le = t1 - d/2;
                x = le;
incre = d/n;
res = zeros(n);
slope = tan(theta);
c = g -(slope*h);
xx = x - le;
val = 1;


while( x <= (le+d))
     y =  x*slope + c ;       
     if(y>=-d/2)&&(y<=d/2)
        values(val,1) = x;
        values(val,2) = y;
     end
     x = x+incre;
     val = val+1;
clear y;
end



y = -d/2;

while(y<=d/2)

  x = (y-c)/slope;
  if (x<=(d+le) && x>=le )
     values(val,1) = x;
     values(val,2) = y  ;
  end
val = val+1;
clear x;
 y = y+ incre;  
end


values = arrange(values)
m = size(values);
n = m(1);
for k = 1:n-1
    result = sqrt(  (values(k,1)  - values(k+1,1))^2   +    (values(k,2) - values(k+1,2))^2 );
    
     lac(2) = ceil(((values(k,1) + values(k+1,1)) * 0.5 - le)/incre);
     q = values(k,2) + values(k+1,2) +d ;
     q = q/2;
     q = q/incre;
     q = floor(q);
     if(mod(n,2) == 0)
             if(theta_org >=  0 )
                 lac(1) = n/2 - q;
             else

                  lac(1) = n/2 + q;
             end
     else
         if(theta_org >=  0 )
                 lac(1) = (n+1)/2 - q;
         else

                 lac(1) = (n+1)/2 + q;
         end
     end
                 
	
				if(lac(1) >0 && lac(2) > 0)
                   res(lac(1),lac(2)) = result;
                end
               clear lac;
end 
  
end
