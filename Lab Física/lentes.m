clc;
clear;

% a distância focal é o ponto onde os raios se convergem

% o valor do foco para lentes convergentes é sempre positivo o oposto é na
% divergente com o foco negativo

% o grau da lente é o inverso da distância focal em metros 
lente = input("Qual tipo de lente C ou D: ", 's'); %convergente ou divergente

d = input("Distancia focal(cm) ");
e = input("Erro aproximado(cm): ");
if lente == "d" %lente divergente tem o foco negativo
    d = -d;
elseif lente == "c"
else 
    disp("digite um valor válido")
end

c = 100/d; %vergencia = grau
disp("O grau dessa lente é de: " + c + " +/- " + e)