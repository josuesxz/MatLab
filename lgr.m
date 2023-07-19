clc;
clear;

% 1. Especificar o sistema de controle
num = [1, 1];
den = [1 10 32 32 0];
sys = tf(num, den);
disp(sys)

% 2. Plotar o Lugar das Raízes
rlocus(sys);
title('Lugar das Raízes do sistema de controle de segunda ordem');
grid on;
