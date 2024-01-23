clc; clear;

syms s k b j 

j = 10; b = 5;
controlador = k + k*s;
servo = 1/(j*s^2 + b*s);
carga = 1/(s+1);
sensor = 1;

p1 = controlador*servo*carga;
sistema = p1/(1 + p1*sensor);
pretty(simplify(sistema))