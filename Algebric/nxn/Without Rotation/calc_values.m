function [res] = calc_values( d,t1,t2,m,n,j)
theta_max = atan(d/( 2*t1 - d ));
theta = (j/m)*theta_max;
theta_org = theta;
theta = abs(theta);
a=2;
x = 0;
y = (t1-(d/2))*tan(theta);
l= d/n;
res = zeros(n);
while(a==2)
                    if(x>d ||y>d/2||y<-d/2)
                        break;
                    end
                            p = y - floor((y/l)) + l*tan(theta) ;
                    if( p>l)
                          temp2 = x;
                          temp1= y;
                          temp3 = nv(y,d,n);
                          le = nv(y,d,n) - y; % Height
                          y = nv(y,d,n);
                          x = x+ le* cot(theta);
                           result =(le)/sin(theta);
                           result = abs(result);
                           lac = Location_data(x,y,l,n,theta_org);
                          if(lac(1) >0 && lac(2) > 0)
                              res(lac(1),lac(2)) = result;
                          end
                           y = temp1 +  (l*tan(theta));
                           x = temp2 + l;
                           le = y - temp3;
                           result =(le)/sin(theta);
                    else
                      x = x+l;
                      y = y+ (l*tan(theta));
                        result = l*sec(theta);
                    end
                    result = abs(result);
                 lac(2) = ceil(((values(k,1) + values(k+1,1)) * 0.5 - le)/incre);
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
                    
end    
end

