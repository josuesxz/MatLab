clc;
clear;
format shortE; %deixa as saídas em notação científica
syms x;

mu_0 = 4*1e-7; % Valor da constante magnética em T·m/A
n = 25; %numero de espiras
largura = 23.52941;

corrente = [0.05 0.12 0.14 0.17 0.23]; %valores da corrente no experimento
theta = [20 30 38 41 50]*pi/180; %converte o vetor graus para radianos

% CÁLCULO DO CAMPO MAGNÉTICO
campo_magnetico = (sqrt(2)*mu_0*n*corrente)*(largura)
tg_theta = tan(theta)

% GRÁFICO B X TAN(THETA)
plot(campo_magnetico, tg_theta, 'o'); %plot(x,y)
xlabel('Campo magnetico');
ylabel('Tangente de angulo');
title('Gráfico B x tan(theta)');

%REGRESSÃO LINEAR 
coeficientes = polyfit(tg_theta, campo_magnetico, 1); % Ajusta uma curva polinomial de grau 1 (regressão linear) polyfit(x,y)
a = coeficientes(1); % Coeficiente angular (inclinação)
b = coeficientes(2); % Coeficiente linear (intercepto)
tendencia = a * x + b; % Valores previstos pela regressão
pretty(simplify(tendencia))
disp('Coeficiente angular (inclinação):');
disp(a);
disp('Coeficiente linear (intercepto):');
disp(b);