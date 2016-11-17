function [  ] = signalspecs( s, fs )
%UNTITLED Summary of this function goes here
%   devuelve info sobre senal

if (nargin == 1)
    fs = 1000;
   fprintf('****no hay fs luego eje de frecuencias no representativo');
else
   fprintf('frecuencia_muestreo =%d\n', fs);
   fprintf('bw_ocupado =%d\n', fs/2);
end;

%analisys en frecuencia
Z = fftshift(fft(xcorr(s)));
f = linspace(-fs/2,fs/2, length(Z));
figure
plot(f,10*log10(abs(Z)));
figure
spectrogram(s)


%analisys temporal
fprintf('longitud=%d\n', length(s));
fprintf('duracion=%d\n', length(s)/fs);
fprintf('maximo =%d\n', max(s));
fprintf('minimo =%d\n', min(s));
fprintf('avg=%d\n', mean(s));
dif = s(1:end-1)-s(2:end);
fprintf('maxdif =%d\n', max(abs(dif)));
fprintf('mindif =%d\n', min(abs(dif)));
fprintf('avgdif =%d\n', mean(abs(dif)));
figure
hold on
plot(s)
plot(dif)
legend('s', 'difs')
figure
histogram(s,floor(length(unique(s))/20))

end

