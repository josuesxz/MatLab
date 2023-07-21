clc;
clear;

syms B J K s
B = 5;
J = 3;
K = 1;
% Declarando os denominadores e numeradores
num1 = K; den1 = [J B 0];
num2 = 2; den2 = [2 1];
num3 = 1; den3 = [1 4];
num4 = 3; den4 = [1 1];
num5 = 1; den5 = [1 1];
% Declarando as TFs
referencia = tf(1, [1 0]);
motor = tf(num1, den1)
esteira1 = tf(num2, den2);
esteira2 = tf(num3, den3);
tacometro = tf(num4, den4);
inversor = tf(num5, den5);

p1 = series(motor, esteira1);
p2 = feedback(p1, tacometro);
p3 = series(p2, esteira2);
p4 = minreal(feedback(p3, inversor));
p5 = minreal(p4*referencia)

[Wn,Z]=damp(p5)