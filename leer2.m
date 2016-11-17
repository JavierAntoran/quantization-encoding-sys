function x = leer2()
%function x = leer2()
%Lee la señal s1, y la guarda en el vector x

img = imread('datos/s2.png');
[r,c] = size(img);
x = double(reshape(img,1,r*c));
x = x / 256;

fprintf('img: s2.png\n');
fprintf('  - tamaño: ( %d x %d)\n',r,c);
fprintf('  - muestras: %d muestras\n',length(x));


