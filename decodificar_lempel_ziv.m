function m = decodificar_lempel_ziv(u, bits_diccionario, debug)
%function m = decodificar_lempel_ziv(u, bits_diccionario, debug)
%Función que permite decodificar un mensaje utilizando
% el codificador Lempel-Ziv basado en diccionario.
% u: mensaje codificado, vector binario.
% bits_diccionario: número de bits del diccionario.
% debug: parámetro opcional que permite visualizar el 
%        progreso del algoritmo.
% m: mensaje binario, vector binario.
