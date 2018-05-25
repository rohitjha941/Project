function [values] = arrange(d)
m = size(d);
n = m(1);

for i = 1:n
    for j = i:n
        if(d(j,1) <d(i,1))
            t = d(j,1) ;
            d(j,1) = d(i,1);
            d(i,1) = t;
            
            t = d(j,2);
            d(j,2) = d(i,2);
            d(i,2) = t;
        end
    end
end
values = d;
            
            
end

