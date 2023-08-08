clc;
clear;
format shortE;
syms x y;

%Gráfico de sen(theta) x (k = m/d)

%Declarando valores da reta
k = [0 0.01 0.02 0.03 0.04];
sen = [0 0.07 0.13 0.19 0.27];

%Preparando a regessão

plot(k, sen)
p = polyfit(k, sen, 1);
a = p(1)
b = p(2)
y = a*x+b

