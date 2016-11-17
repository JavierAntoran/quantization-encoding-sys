function [ x ] = decodificar1( u, codigo )

ley = 1; %1 es mu
vcod = 0.8;
mu = 2;
A = 0;%esto no importa

u1 = decodificar_mensaje(u, codigo);

uc = decod_s1(u1);

x = descleymu(uc, ley, vcod, mu, A);

end

