function [ u ] = decod_s3( eQuant )


orden_predictor = 4;
o = 1:orden_predictor;
%a = coeffs_dpcm(s, orden_predictor)'; receptor no conoce senal a priori
a = [1.80293   -1.4785    0.7366   -0.1748];%coefs ideales


k = 0.36521;

Vmin = -0.4089*k-0.014;
Vmax = 0.3681*k-0.036;

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

