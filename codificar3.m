function [ u, codigo ] = codificar3( s )

s = wavread('s3.wav');

bits = 2;
ley = 0;%A
A = 0.7;
mu = 0;%no en uso
vcod = 0.7812;

c = codificarLey(s, ley, vcod, mu, A)';

r = cod_s3(c);

p = probabilidades(r, bits);

codigo = codigo_huffman(p);

u = codificar_mensaje(r, codigo);


end

