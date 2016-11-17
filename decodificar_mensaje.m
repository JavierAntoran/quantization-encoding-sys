function m = decodificar_mensaje(u, codigo)
%function m = decodificar_mensaje(u, codigo)
%Funci�n que permite decodificar un mensaje utilizando
% un c�digo. El c�digo debe tener una estructura
% compatible con la funci�n print_codigo.
% El mensaje codificado de entrada debe ser una secuencia
% con los 0s y 1s de la representaci�n binaria
% del mensaje.
% El mensaje decodificado consistir� en una secuencia de
% enteros con los �ndices de los s�mbolos.
% u: mensaje codificado, vector binario.
% codigo: c�digo a utilizar.
% m: mensaje original, �ndices de s�mbolos.

N = length(u);

m = [];
i = 0;
while i < N	
	sj = buscar_palabra_codigo(codigo, u, i + 1);
	
	wordn = codigo.simbolos(sj).word;

	m = [m, sj];
	
	i = i + length(wordn);	
end

%---------------------------------------------------------------
function  [indice] = buscar_palabra_codigo(codigo, u, i)

	j = 0;	
	word   = [u(i+j)];
	indice = indice_palabra_codigo(codigo, word);
  	   
	while (indice == 0)
	  j = j + 1;
	 
	  word   = [word u(i+j)];
	  indice = indice_palabra_codigo(codigo, word);
  	  
	end
	
	%fprintf('%d: grupo = %s\n', i, grupo);


%---------------------------------------------------------------
function index = indice_palabra_codigo(codigo, word)

index = 0;

for j=1:codigo.K
	
    if (length(codigo.simbolos(j).word) == length(word))
    if ( all(codigo.simbolos(j).word == word)  )
        index = j;
        return 
    end
    end
end


return
