function [ a ] = coeffs_dpcm( s, orden )

rx = xcorr(s);
rx = rx(length(s):end);

rx1 = rx(2:1+orden);
rx2 = rx(1:orden);

gal = (orden > 1);
if gal
    rx22 = toeplitz(rx2);
else
    rx22 = rx2;
end

h = inv(rx22) * rx1;

a = h;
end

