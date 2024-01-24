clear;
clc;

a = [0 1;-25 -4];
b = [0 ; 25];
c = [1 0];
d = [0];

nyquist(a, b, c, d)
title("Diagrama de Nyuist")