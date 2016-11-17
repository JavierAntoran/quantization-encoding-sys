clear all
wavread('s1.wav');
s = ans;
%%
k = 1;% escalado voltages maximos

Vmax = 1.*k;
Vmin= -1.*k;
Vdif = (1/2)*(abs(Vmax)+abs(Vmin)+0.8);
Vcuant = Vdif;

b =4;
mu=5;
ley = 1; %0 A, 1 mu
A=9;
M=2.^b;
q = (Vmax-Vmin)/M;
%
%compresion
c = codificarLey(s,ley, Vcuant, mu, A); %ley mu

%cuantificacion
xCuant = round(  (c - Vmin) / q  , 0);
xCuant(xCuant > M) = M;
xCuant(xCuant < 1) = 1;

%reconstruccion
r = xCuant * q + Vmin;

%descompression
u=descleymu(r, ley, Vcuant ,mu, A);

verificar_error(s, u)

