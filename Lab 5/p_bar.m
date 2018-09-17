function pbar = p_bar( p, i , j )
  pbar = (p(i + 1,j) + p(i - 1,j) + p(i ,j + 1) + p(i ,j - 1))/4;
endfunction
