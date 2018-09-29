tStart=tic;

E1 = load("E1.mat");
E2 = load("E2.mat");
E3 = load("E3.mat");
pos = [-ps1/sqrt(1 + power(ps1, 2) + power(qs1, 2)), -qs1/sqrt(1 + power(ps1, 2) + power(qs1, 2)), 1/sqrt(1 + power(ps1, 2) + power(qs1, 2));
-ps2/sqrt(1 + power(ps2, 2) + power(qs2, 2)), -qs2/sqrt(1 + power(ps2, 2) + power(qs2, 2)), 1/sqrt(1 + power(ps2, 2) + power(qs2, 2));
-ps3/sqrt(1 + power(ps3, 2) + power(qs3, 2)), -qs3/sqrt(1 + power(ps3, 2) + power(qs3, 2)), 1/sqrt(1 + power(ps3, 2) + power(qs3, 2))
 ];
%x = [-p1/(sqrt(1 + power(p1,2) + power(q1,2)));
%-q1/(sqrt(1 + power(p1,2) + power(q1,2)));
%1/(sqrt(1 + power(p1,2) + power(q1,2)))]
pos = double(pos);
[v,sigma,u] = svd(pos);
numRows = size(E1)(1);
numColumns = size(E1)(2);
p = zeros(numRows, numColumns);
q = zeros(numRows, numColumns); 
for R=1:numRows
    for C=1:numColumns
        e = [E1(R,C);E2(R,C);E3(R,C)];     
        pq = double(v) * double(pinv(sigma) * double(double(u') * double(e)));
        if pq(3) != 0
         p(R,C) = pq(1)/pq(3);
         q(R,C) = pq(2)/pq(3);
        endif
    endfor
endfor

save p.mat p
save q.mat q
tElapsed=toc(tStart)
