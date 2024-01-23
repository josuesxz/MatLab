clear;
clc;

a = [0 1; -24 -4];
b = [0; 25];
c = [1 0];
d = [0];

bode(a, b, c, d)
nyquist(a, b,c ,d)