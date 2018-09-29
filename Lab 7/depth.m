tStart=tic;
p = load("p.mat");
q = load("q.mat");
i1 = size(q,1);
j1= size(p,2);
z = rand(i1, j1);

for count = 1 : 1000
  i1 = size(p,1);
  j1= size(p,2);
  
  for i = 3 : (i1 - 3)
    for j = 3 : (j1 - 3)
      zn(i, j) = (z(i, j) + p(i,j) - p(i - 1, j) + q(i,j) - q(i, j - 1))/4;
    endfor
  endfor
  z = zn;
endfor

save depth_matrix.mat z
tElapsed=toc(tStart)
