function [ m ] = decod_s2_delta( mcod )


d = 2;
L = length(mcod);
m = zeros(1,L+1);
delta = 0.19;
dmax = 0.17;
dmin = 0.09;
k = 1.14;

for i = 1:L
    
    if mcod(i)
           
         m(i+1) = m(i) + delta;
         
         
    else
        
        m(i+1) = m(i) - delta;
        
    end
    
     if (i >= d)
        if ((all(mcod(i-d+1:i))) || not(any(mcod(i-d+1:i))))
            delta = delta*k;

        elseif (all(mod(mod(mcod(i-d+1:i) + ones(1,d),2) + mcod(i-d+1:i), 2)) && (delta > dmin))
            delta = delta/k;
        
        end
    end

    if delta > dmax
        delta = dmax;
    elseif delta < dmin
        delta = dmin;
    end
    
    
end


m = m(2:end);
end

