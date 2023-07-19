clc;
clear;

%declaração de termos
num1 = 1; den1 = [1 0];
num2 = 1; den2 = [1 2];
num3 = 1; den3 = [2 3];

%criação das FT
controlador = tf(num1, den1)
processo = tf(num2, den2)
medidor = tf(num3, den3)

p1 = series(controlador, processo);
ftmf = feedback(p1, medidor)
ftma = series(p1, medidor)

t = 0:0.1:10; % Vetor de tempo de 0 a 5 segundos com intervalo de 0.01 segundos
u = ones(size(t)); % Degrau unitário como entrada
[y, t] = step(ftmf, t, u); % Simulação da resposta ao degrau

plot(t, y);
xlabel('Tempo (s)');
ylabel('Saída');
title('Resposta ao degrau de um sistema de controle de segunda ordem');
grid on;