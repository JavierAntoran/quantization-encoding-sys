function [ u ] = cod_s4_delta( analog )

delta = 1.025;
k = 1.34;

dmax = 71.2;
dmin = 1.82;


d = 2;
b=0;
L = length(analog);
mcod = zeros(1,L); 
y_n = zeros(1, L+1);

for i=1:L
 
    t=(analog(i)-b);
    
    if t > 0
        y_n(i+1)=y_n(i)+delta;
        mcod(i) = 1;
 
    else
        y_n(i+1)=y_n(i)-delta;
        mcod(i) = 0;
    end;
    
    if (i >= d)
        if ((all(mcod(i-d+1:i))) || not(any(mcod(i-d+1:i))))
            delta = delta*k;

        elseif (all(mod(mod(mcod(i-d+1:i) + ones(1,d),2) + mcod(i-d+1:i), 2)))
            delta = delta/k;
        
        end
    end

     if delta > dmax
        delta = dmax;
    elseif delta < dmin
        delta = dmin;
    end
    
     b=y_n(i+1);
end

u = mcod;
end

