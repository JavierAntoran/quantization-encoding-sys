function [ m ] = decodificar4(u )
    rs = decodificar_lempel_ziv(u,11);
    m = decod_s4_delta(rs);
end

