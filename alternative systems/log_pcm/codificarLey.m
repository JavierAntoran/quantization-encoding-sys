function [ Cx ] = codificarLey( x, ley, Vmax, mu, A  )

Cx = zeros(1,length(x));
if(ley) %utilizamos ley mu
    
    Cx=sign(x).*Vmax.*((log(1+mu*(abs(x)/Vmax))/(log(1+mu))));
    
else %utilizamos ley a
        
        i = find(abs(x) <= (Vmax/A));
        if ~isempty(i)
            Cx(i) = A / (log(A)+1) * abs(x(i)) .* sign(x(i));
        end
        i = find(abs(x) >  (Vmax/A));
        if ~isempty(i)
            Cx(i) = Vmax / (log(A)+1) * (1 + log(abs(x(i)) / (Vmax/A))) .* sign(x(i));
        end
        
end

end

