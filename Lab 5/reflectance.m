function ref = reflactance( p, q , ps, qs )
  ref = (p * ps + q * qs + 1)/(power(power(p,2) + power(q,2) + 1 ,0.5 ) * (power(power(ps,2) + power(qs,2) + 1 , 0.5)));
endfunction
