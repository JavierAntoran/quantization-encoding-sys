function [ u ] = cod_s3( s )

orden_predictor = 4;
o = 1:orden_predictor;
%a = coeffs_dpcm(s, orden_predictor)';
a = [1.80293   -1.4785    0.7366   -0.1748];%coefs ideales

k = 0.36521;
dif = s(1:end-1)-s(2:end);%sumar aqui compensa por variaciones de saturacion creadas por cuantificador
Vmin = min(dif)*k-0.014;
Vmax = max(dif)*k-0.036;


b = 2;
M=2^b;
q = (Vmax-Vmin)/M;

L = length(s);
pred = zeros(1,L);
before_pred = zeros(1,L+orden_predictor);
ePred = zeros(1,L);
eQuant = zeros(1, L);

for l = 1:length(s)
   
    
    pred(l) = sum(a .* before_pred(l - o + orden_predictor));
    
    
    ePred(l) = s(l) - pred(l);
    
    eQuant(l) = round( (ePred(l) - Vmin) / q  , 0);
    
    if eQuant(l) > M
        eQuant(l) = M;
    elseif eQuant(l) < 1
        eQuant(l) = 1;
        
    end
    
    before_pred(l+orden_predictor) = eQuant(l)*q+Vmin+pred(l);
    
end

u = eQuant;

end

