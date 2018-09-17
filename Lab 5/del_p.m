function delp = del_p( p, q , ps, qs )
delp = (ps * (power(q,2) + 1) - p * (q * qs + 1)) / ((power((power(qs, 2) + 1 + power(ps, 2)), 0.5)) * (power((power(q, 2) + 1 + power(p, 2)), 1.5)));
endfunction
