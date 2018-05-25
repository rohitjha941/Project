function re = Location_data  (f,g,h,n,o)
u = ceil((f/h));
v = floor((g/h));
if(o>=0) 
    v = ((n/2) - v);
else
     v = ((n/2) + v);
end
re = [v,u];
end

