function [ p ] = probabilidades( m, bits )

p = zeros(1,2^bits);

for i = 1:2^bits
    
    p(i) = sum(m == i)/(length(m));
    
    
end


end

