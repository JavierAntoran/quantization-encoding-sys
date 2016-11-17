function u = codificar_mensaje(m, codigo)
%Función que permite codificar un mensaje utilizando
% un código. El código debe tener una estructura
% compatible con la función print_codigo.
% El mensaje debe ser una secuencia de enteros con
% los índices de los símbolos a codificar.
% El mensaje codificado está compuesto por una secuencia
% con los 0s y 1s de la representación binaria
% del mensaje.
% m: mensaje original, índices de símbolos
% codigo: código a utilizar
% u: mensaje codificado, vector binario.

N = length(m);

u = [];
for n=1:N	
	sj = m(n);

	wordn = codigo.simbolos(sj).word;

	u = [u, wordn];
end




