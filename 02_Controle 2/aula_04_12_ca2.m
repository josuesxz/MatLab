clc;
clear;

k = 45
num = [0.25*k];
den = [1 1.75 0.25];
g = tf(num, den);
ftmf = feedback(g, 1)
figure;
rlocus(g)
figure;
step(g)