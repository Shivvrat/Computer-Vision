function qbar = q_bar( q, i , j )
  qbar = (q(i + 1,j) + q(i - 1,j) + q(i ,j + 1) + q(i ,j - 1))/4;
endfunction
