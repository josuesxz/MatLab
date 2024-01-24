%Definindo a FT
num = [1];
den = [1 0.3 0];
p1 = tf(num, den)

%Definindo controladores
K_c = 20;
K_a = 1;

%Realimentando 
p2 = K_a*K_c
p3 = series(p2, g);
g = feedback(p3, 1)

%Lugar das raízes
figure;
rlocus(g)

%Resposta por degrau
figure;
step(g)
