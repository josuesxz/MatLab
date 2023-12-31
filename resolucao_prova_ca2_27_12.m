clc;
clear;

num = 0.8;
den = [1 3 3 2 0];
p1 = tf(num, den);

g = feedback(p1, 1)

figure;
rlocus(g)

figure;
step(g)