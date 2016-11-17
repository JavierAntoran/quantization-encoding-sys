function [ u ] = codificar4( s )
    cod = cod_s4_delta(s);
    u = codificar_lempel_ziv( cod ,11);
end

