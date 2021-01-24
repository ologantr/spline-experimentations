X = linspace(-1, 1, 8);
x = linspace(-1, 1, 101);
m = 4;
t = extendedpartition(X,m);

# length(c) = m + K = m + somma delle molteplicità dei nodi interni
# K = 6 -> length(c) = 4 + 6 = 10

c = [1, 2, 5, 2, -1, -7, 1, -3, 1, 5];
v = zeros(101, 1);

for i=1:101
  l = search_l(t,x(i));
  if(l > length(c))
    l = length(c);
  endif
  u(i,1) = spl(c,t,m,x(i),l);
endfor

plot(x,u);
title('Cubic Random Spline (coefficient algorithm)');
