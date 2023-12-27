clc;
clear;

num = 1;
den = [1 3 3 2 0];
p1 = tf(num, den);

g = feedback(p1, 1)
