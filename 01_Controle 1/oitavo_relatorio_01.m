clc; clear; close all;

k = 10; %valores de k que o sistema fica estável com b-3 e j=1 de 1 a 5
j = 10; b = 5; %constantes do servo
sensor = 1; %ganho da realimentacao
degrau = tf([1], [1]);

controlador = tf([k k], 1);
n_servo = 1;
d_servo = [j b 0];
servo = tf(n_servo, d_servo);

n_carga = 1;
d_carga = [1 1];
carga = tf(n_carga, d_carga);

p1 = controlador*servo*carga;
sistema = feedback(p1, sensor);

%rlocus(sistema)
step(sistema);
%sisotool(sistema);

info = stepinfo(sistema);
[w, zeta] = damp(sistema);
disp('Frequências naturais (rad/s):')
disp(w(1))
disp('Coeficientes de amortecimento:') 
disp(zeta(1))
Kp = dcgain(sistema); %calculo de erro para degrau    
erro =  1 - info.SettlingMin; %referencia - valor da saida degrau
ts5 = 3/( zeta(1)*w(1));

disp("Tr (s) = ") 
disp(info.RiseTime)
disp("Tp (s) = ")
disp(info.PeakTime) %tempo de pico
disp("Ts 2% (s) = ")
disp(info.SettlingTime) %tempo de acomodação padrão de 2% já
disp("Ts 5% (s) = ")
disp(ts5)
disp("Erro = ")
disp(erro)