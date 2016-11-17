function u = codificar_mensaje(m, codigo)
%Funci�n que permite codificar un mensaje utilizando
% un c�digo. El c�digo debe tener una estructura
% compatible con la funci�n print_codigo.
% El mensaje debe ser una secuencia de enteros con
% los �ndices de los s�mbolos a codificar.
% El mensaje codificado est� compuesto por una secuencia
% con los 0s y 1s de la representaci�n binaria
% del mensaje.
% m: mensaje original, �ndices de s�mbolos
% codigo: c�digo a utilizar
% u: mensaje codificado, vector binario.

N = length(m);

u = [];
for n=1:N	
	sj = m(n);

	wordn = codigo.simbolos(sj).word;

	u = [u, wordn];
end




