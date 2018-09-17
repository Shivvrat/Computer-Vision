function delq = del_q( p, q , ps, qs )
delq = (qs * (power(p,2) + 1) - q * (p * ps + 1)) / ((power((power(qs, 2) + 1 + power(ps, 2)), 0.5)) * (power((power(q, 2) + 1 + power(p, 2)), 1.5)));
endfunction
