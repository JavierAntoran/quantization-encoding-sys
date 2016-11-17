clear all
sen = wavread('s3.wav');

Ltramo = 100;
iteraciones = length(sen)/Ltramo;
orden_predictor = 4;
mensaje = [];

o = 1:orden_predictor;

k = 0.35;
dif = sen(1:end-1)-sen(2:end);%sumar aqui compensa por variaciones de saturacion creadas por cuantificador
Vmin = min(dif)*k-0.15;
Vmax = max(dif)*k-0.0;
b = 1;
M=2^b;
q = (Vmax-Vmin)/M;


for j = 1:iteraciones
    
    s = sen((j-1)*Ltramo+1:j*Ltramo);

a = coeffs_dpcm(s, orden_predictor)';
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

mensaje = horzcat(mensaje, before_pred(1+orden_predictor:end));

end

verificar_error(sen, mensaje')