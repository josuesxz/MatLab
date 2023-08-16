clc;
clear;
syms s t;

%DEFINDO A FUNÇÃO DE TRANSFERÊNCIA
num = 1;
den = [1 3 1];
k = 1; %definido um 'k' qualquer
h = 1; %Atraso de 1s

p1 = tf(num, den); %sistema de segunda ordem
p1.OutputDelay = h; %preparando o valor de atraso
p = series(p1, k); %sistema com um ganho 'k' qualquer
g = feedback(p, 1); %sistema sendo realimentado 

%REVERSO DE LAPLACE
[N, D] = tfdata(p1, 'v'); %parte sem delay
[R, P, K] = residue(N, D);

fSemdelay = ilaplace(poly2sym(num, s) / poly2sym(den, s)); %funcao sem dalay
fComdelay = subs(fSemdelay, t, t-h) * heaviside(t - h); %funcao com delay para incorporar

disp('Inversa de Laplace:');
pretty(fComdelay);

%ESPAÇO DE ESTADOS
[A, B, C, D] = tf2ss(num, den); %converter FT -> Espaço estados 
sistema_ss = ss(A, B, C, D);

% PARÂMETROS BÁSICOS DA RESPOSTA TEMPORAL
p = pole(g);
w = abs(p(1)); 
zeta = -real(p(1)) / w;
disp(['zeta = ', num2str(zeta)]);
disp(['w = ', num2str(w), ' rad/s']);

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

%MARGEM DE GANHO E MARGEM DEFASE
[GM, PM, wcg, wcp] = margin(g);
disp(['Margem de Ganho: ', num2str(GM), ' dB']);
disp(['Margem de Fase: ', num2str(PM), ' graus']); %inf(graus) nunca cruza o eixo
disp(['Frequência de ganho 0db: ', num2str(wcg), ' rad/s']);
disp(['Frequência de fase -180: ', num2str(wcp), ' rad/s']);

%RESPOSTA DOS GRAFICOS 
%step(g);
%rlocus(g);
%bode(g);
%nyquist(g);
%sisotool(g); %mostra todo os resultados acima 
%pzmap(g); %mapa de polos e zeros