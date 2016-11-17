clear all
close all

tic
fprintf('s1-----------\n');
x1 = wavread('s1.wav');

[u1,codigo] = codificar1(x1);

fprintf('num bits: %d,  %.2f bits/muestra\n',length(u1), length(u1)/length(x1));

xr1 = decodificar1(u1,codigo);

SNRqdB1 = verificar_error(x1, xr1');

fprintf('SNRq: %.3f\n',SNRqdB1);



fprintf('s2-----------\n');
x2 = leer2();

u2 = codificar2(x2);

fprintf('num bits: %d,  %.2f bits/muestra\n',length(u2), length(u2)/length(x2));

xr2 = decodificar2(u2);

SNRqdB2 = verificar_error(x2, xr2);

fprintf('SNRq: %.2f\n',SNRqdB2);



fprintf('s3-----------\n');
x3 = wavread('s3.wav');

[u3,codigo] = codificar3(x3);

fprintf('num bits: %d,  %.2f bits/muestra\n',length(u3), length(u3)/length(x3));

xr3 = decodificar3(u3,codigo);

SNRqdB3 = verificar_error(x3, xr3);

fprintf('SNRq: %.3f\n',SNRqdB3);



fprintf('s4-----------\n');
load('s4.mat');

u4 = codificar4(s4);

fprintf('num bits: %d,  %.2f bits/muestra\n',length(u4), length(u4)/length(s4));

xr4 = decodificar4(u4);

SNRqdB4 = verificar_error(s4, xr4);

fprintf('SNRq: %.1f\n',SNRqdB4);

toc
