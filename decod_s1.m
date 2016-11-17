function [ u ] = decod_s1( eQuant)


orden_predictor = 8;
o = 1:orden_predictor;
a = [1.5739   -0.6627    0.2449   -0.3204    0.0523   -0.0003    0.0992   -0.0717];

k = 0.371;

Vmin = -0.5678*k-0.014;
Vmax = 0.3467*k-0.036;

b = 2;
M=2^b;
q = (Vmax-Vmin)/M;

L = length(eQuant);
r = eQuant * q + Vmin;
r = [0, r];
u = zeros(1, L+orden_predictor);

for i = orden_predictor+1:L+orden_predictor+1
    
    u(i) = r(i-orden_predictor) + sum(a.* u(i-o));
    
end
u = u(orden_predictor+2:end);

end

