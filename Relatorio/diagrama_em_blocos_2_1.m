clc;
clear;

%declarando os termos 
num1 = 1; den1 = [1 10];
num2 = 1; den2 = [1 1];
num3 = [1 0 1]; den3 = [1 4 4];
num4 = [1 1]; den4 = [1 6];
num5 = [1 1]; den5 = [1 2];

%declarando as funções
G1 = tf(num1, den1)
G2 = tf(num2, den2)
G3 = tf(num3, den3)
G4 = tf(num4, den4)
H1 = tf(num5, den5)
H2 = 2
H3 = 1

%termo auxiliar
p1 = H2/G2
p2 = feedback(p1, G3)
p3 = series(p2, G4)
p4 = feedback(p3, H1)
p5 = series(G2, G1)
p6 = series(p5, p4)
p7 = minreal(feedback(p6, H3))