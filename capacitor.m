clc;
clear;

t = [0 3 6 10 14 18 23 30 38 65 105 175 177 178 186 189 194 200 207 220 233 248 342];
v = [1 2 3 4 5 6 7 8 9 10 11 12 11 10 9 8 7 6 5 4 3 2 1];

length(t)
length(v)

%t_descarga = [0 2 3 7 11 14 19 25 32 45 58 73 167];
%v_descarga = [12 11 10 9 8 7 6 5 4 3 2 1 0];

plot(t, v, 'r-o ', 'LineWidth', 2);
xlabel('Tempo (s)');
ylabel('Tensão (V)');
title("Gráfico do comportamento da tensão no circuito");
grid on;

ln_v = log(v);
p = polyfit(t, ln_v, 1); %ln(b) + a*x
slope = p(1)
y_intercept = p(2);
% Mostrar os resultados
fprintf('Inclinação (b) = %f\n', slope);
fprintf('Intercepto (ln(a)) = %f\n', y_intercept);