% Example 1 - Cruise Control
%         ___________ 
%        |           |            x'
%    Bx' |           |    u     ----->
%  <-----|           |--------> 
%        |           |
%        |___________|
%        ooooooooooooo
% "Piloto automático" de um carro O Cruise control é um sistema que mantém 
% a velocidade de condução de um veículo previamente programada. Uma vez atingida 
% e memorizada a velocidade pretendida, pode-se retirar o pé do acelerador, permitindo 
% assim um maior conforto da condução em estrada ou em viagem.
%%

m = 10; % kg
B = 50;   % N.s/m
u = 50;  % N

nun = [ 1/m ];
den = [1  B/m];

G = tf(nun,den);

% Plot
figure(1), clf
step(u*G)
ylabel('Velocity (m/s)')
title('Cruise Control')