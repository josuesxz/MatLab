clc;
clear;

p = [1 3 2 4];
q = [1 4];
r = roots(p) %raízes do polinomio
p = poly(r) %polinomio atrvés da raíz

n = conv(p, q) %produto de polinomio
g = tf(q ,p) %função de transferência
