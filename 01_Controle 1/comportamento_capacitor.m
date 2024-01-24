clc;
clear;
format shortE;

t = [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22];
c = 100*1e-6;
k = 30000*c;
V = 12;

Vc = V*exp(-t/k); %positvo carga e negativo descarga

plot(t, Vc, 'r -', 'LineWidth', 3);