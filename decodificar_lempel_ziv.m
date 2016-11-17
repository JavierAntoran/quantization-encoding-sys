function m = decodificar_lempel_ziv(u, bits_diccionario, debug)
%function m = decodificar_lempel_ziv(u, bits_diccionario, debug)
%Funci�n que permite decodificar un mensaje utilizando
% el codificador Lempel-Ziv basado en diccionario.
% u: mensaje codificado, vector binario.
% bits_diccionario: n�mero de bits del diccionario.
% debug: par�metro opcional que permite visualizar el 
%        progreso del algoritmo.
% m: mensaje binario, vector binario.
