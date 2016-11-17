function [ out ] = dcodificar2( in )
    decod = decodificar_lempel_ziv(in,10);
    out = decod_s2_delta(decod);
end

