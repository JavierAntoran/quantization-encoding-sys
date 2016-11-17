function [ u, codigo ] = codificar1(s)

bits = 2;
ley = 1; %1 es mu
vcod = 0.8;
mu = 2;
A = 0;%esto no importa

%compression
c = codificarLey(s, ley, vcod, mu, A);

%cuantifica
r = cod_s1(c);

p = probabilidades(r, bits);

codigo = codigo_huffman(p);

u = codificar_mensaje(r, codigo);

end

