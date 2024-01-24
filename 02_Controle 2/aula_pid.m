clc;
clear;

%DEFINIÇÃO DE CONTROLADOR
Kp = input("Digite o valor de Kp: ");
Ki = input("Digite o valor de Ki: ");
Kd = input("Digite o valor de Kd: ");
Ti = input("Digite o tempo de Ti: ");
Td = input("Digite o tempo de Td: ");

numC = [Kd*Ti Kp*Ti Ki];
denC =[0 Ti 0];
Gc = tf(numC, denC);

%DEFINIÇÃO DE ATUADOR
Ka = input("Digite o valor de constante do atuador, Ka: ");
numA = [Ka];
denA = [1];
Ga = tf(numA, denA);

%DEFINIÇÃO DE MOTOR
numM = [0 0 1];
denM = [1 0.3 0]
Gm = tf(numM, denM);

%REALIMENTAÇÃO 
H = [1];

%REDUÇÃO DE SISTEMA
G1 = series(Gc, Ga);
G = series(G1, Gm);
FT = feedback(G, H)

%PLOTAGEM DE GRÁFICOS 
figure;
step(FT);
figure;
rlocus(FT);

sisotool(FT);