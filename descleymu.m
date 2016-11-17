function [ r ] = descleymu( x ,ley ,Vmax, mu, A)

% deshace ley a o ley mu
% 0 A, 1 mu
if ley
    r= (Vmax/mu)*((exp((abs(x).*log(1+mu)/Vmax))-1).*sign(x));
else
    
    
    i = find(abs(x) <= (Vmax/(log(A)+1)));
    
    if ~isempty(i)
            out(i) = (log(A) +1) / A * abs(x(i)) .* sign(x(i));
    end
    
        i = find(abs(x) >  (Vmax/(log(A)+1)));
        
    if ~isempty(i)
        
           out(i) = (Vmax/A) * exp(abs(x(i)) / (Vmax/(log(A)+1)) - 1) .* sign(x(i));
    end
    
    r = out';
    
end

