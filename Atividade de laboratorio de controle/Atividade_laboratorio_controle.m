clc;
clear;

%DEFINDO A FUNÇÃO DE TRANSFERÊNCIA
num = 1;
den = [1 3 1];
k = 1; %definido um 'k' qualquer
h = 1; %Atraso de 1s

p1 = tf(num, den); %sistema de segunda ordem
p1.OutputDelay = h; %preparando o valor de atraso
p = series(p1, k); %sistema com um ganho 'k' qualquer
g = feedback(p, 1); %sistema sendo realimentado 

%ESPAÇO DE ESTADOS
[A, B, C, D] = tf2ss(num, den); %converter FT -> Espaço estados 
sistema_ss = ss(A, B, C, D);


%RESPOSTA TEMPOAL A UM DEGRAU UNITÁRIO
info = stepinfo(g);
sprintf('Tr =  %.2f s', info.RiseTime) %tempo de subida
sprintf('Ts = %.2f s', info.SettlingTime) %tempo de acomodação 
sprintf('MP = %.2f%%', info.Overshoot) %sobresinal
sprintf('Tp = %.2f s', info.PeakTime) %tempo de pico

raiz = conv(den, num); %raízes do polonimio
sprintf('Raiz = %.2f ', raiz)

%ERRO ESTACIONÁRIO
Kp = dcgain(g); %calculo de erro para degrau    
erro_estacionario = 1 / (1 + Kp)


%RESPOSTA DOS GRAFICOS 
%step(g);
%rlocus(g);
%bode(g);
%nyquist(g);
%sisotool(g); %mostra todo os resultados acima 
%pzmap(g); %mapa de polos e zeros