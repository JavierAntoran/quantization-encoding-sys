function [ r ] = codificar2( s )
    cod = cod_s2_delta(s);
    r = codificar_lempel_ziv( cod ,10);
end

