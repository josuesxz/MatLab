k = 40;

s = tf('s');
G = (s+1)/(s*(s-1)*(s+6));
h = k*G/(1+k*G);

open_loop = h;
step(h);