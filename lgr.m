clc;
clear;

% 1. Especificar o sistema de controle
num = [0 1];
den = [1 8 20 0];
sys = tf(num, den);
p = feedback (sys, 1);


% 2. Plotar o Lugar das Raízes
rlocus(p);
title('Lugar da Raízes do sistema de controle');
grid on;
