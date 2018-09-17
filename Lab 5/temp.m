tStart=tic;
E = imread('image.jpg');
i1 = size(E,1)
j1= size(E,2)
p = rand(i1, j1);
q = rand(i1, j1);
ps = 0.5;
qs = 0.5;
lambda = 0.8;
for count = 1 : 10
  for i = 2 : i1 - 2
    for j = 2 : j1 - 2
      p_n1(i, j) = p_bar(p, i , j) + (lambda / 4) * (E(i , j) - reflectance(p(i, j), q(i, j), ps, qs)) * del_p(p(i, j), q(i, j), ps, qs);
      q_nl(i, j) = q_bar(q, i , j) + (lambda / 4) * (E(i , j) - reflectance(p(i, j), q(i, j), ps ,qs)) * del_q(p(i, j), q(i, j), ps, qs);
    endfor
  endfor
  p = p_n1;
  q = q_nl;
endfor
tElapsed=toc(tStart)
\