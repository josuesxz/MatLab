clc; clear; close all;

k = 1;
num = k;
den = [poly([0 -2 -5])];

g = tf(num, den);
%[K, poles] = rlocfind(g)
sisotool(g);