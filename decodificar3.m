function [ x ] = decodificar3( u, codigo )

ley = 0;%A
A = 0.7;
mu = 0;%no en uso
vcod = 0.7812;

u2 = decodificar_mensaje(u, codigo);

uc = decod_s3(u2);

x = descleymu(uc, ley, vcod, mu, A);


end

