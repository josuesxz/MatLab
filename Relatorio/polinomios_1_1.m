clc;
clear;

syms a b c x; %declarando variáveis

a = input("Digite o valor de A: "); %declaração de variáveis 
b = input("Digite o valor de B: ");
c = input("Digite o valor de C: ");

polinomio = a*x^2 + b*x + c; %demonstração do polinômio

disp(" ")
pretty(polinomio) %deixando mais visual o polinomio na saida