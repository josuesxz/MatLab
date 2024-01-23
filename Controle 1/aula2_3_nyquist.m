clear;
clc;

num = [1];
den = [1 0.8 1];

nyquist(num, den)
v = [-2 2 -2 -2]; axis(v)
title("Diagrama de Nyuist")