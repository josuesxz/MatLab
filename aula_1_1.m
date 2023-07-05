num1 = [1];
den1 = [1 1];

num2 = [3 4 6];
den2 = [1 1 3 4];
g = tf(num1, den1)
pzmap(g) %mapa do plano complexo com o real

h = tf(num2, den2)

G = series(g, h) %aberto
H = feedback(g, h) %malha fechada
