function SNRqdB = verificar_error(x, xr)


if ( length(x) ~= length(xr) )

    error('El vector recuperado tiene un número diferente de muestras');
end

nq = x - xr;

S  = sum( x.^2 );
Nq = sum( nq.^2 );

SNRq = S / Nq;
SNRqdB = 10*log10(SNRq);
if (SNRqdB > 15)
    fprintf(' cumple: SNRq > 15dB\n');
end

%regexpi(str, '[01]{2,}')
%regexpi(str, '[0-9]*.?[0-9]+')   

%grep '[0-9]\{2,\}' decodificar*
%grep '\..\?[0-9]\+' decodificar*
