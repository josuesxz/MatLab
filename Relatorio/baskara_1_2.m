clc;
clear;

syms a b c x;

a = input("Digite o valor de A: "); %digitar os coeficientes da equação
b = input("Digite o valor de B: ");
c = input("Digite o valor de C: ");
polinomio = a*x^2 + b*x + c;

disp(" ")
pretty(polinomio) 

delta = sqrt(b*b - 4*a*c);
baixo = 2*a; %simplificação visual das equações
t = (-b+delta)/baixo; %valor da raiz 1
k = (-b-delta)/baixo; %valor da raiz 2

disp("x1 = " + t) 
disp("x2 = "+k) %saída das raízes da 

fplot(polinomio) %plotagem do gráfico deste polinômio
title("Gráfico do polinomio")