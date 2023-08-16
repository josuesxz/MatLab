clc;
clear;

num = exp(-1);
den = [1 3 1];
k = 40;

p1 = tf(num, den); %sistema de segunda ordem
p = series(p1, k); %sistema com um ganho 'k' qualquer
g = feedback(p, 1) %sistema sendo realimentado 

%informações da resposta temporal a um degrau
info = stepinfo(g);
sprintf('Tr =  %.2f s', info.RiseTime) %tempo de subida
sprintf('Ts = %.2f s', info.SettlingTime) %tempo de acomodação 
sprintf('MP = %.2f%%', info.Overshoot) %sobresinal
sprintf('Tp = %.2f s', info.PeakTime) %tempo de pico

%Resposta de gráficos
step(g);
%rlocus(g);
%bode(g);
%nyquist(g);

