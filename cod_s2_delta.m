function [ u ] = cod_s2_delta( analog )



L = length(analog);
delta = 0.19;
k = 1.14;
dmin = 0.09;
dmax = 0.17;
b=0;
d = 2;
mcod = zeros(1,L); 
y_n = zeros(1, L+1);


for i=1:L
 
    t=(analog(i)-b);
    y=sign(t);
    
    if y==1
        y_n(i+1)=y_n(i)+delta;
        mcod(i) = 1;

    else
        y_n(i+1)=y_n(i)-delta;
        mcod(i) = 0;

    end;
    
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
    
     b=y_n(i+1);
     
end

u = mcod;
end

