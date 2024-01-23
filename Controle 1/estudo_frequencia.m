clc; clear; close all;

k = 5;
z = 0.353;
den = [1];
num = [1 6 8] ;

g = tf(den, num)
figure;
bode(g);
figure
nyquist(g);
figure;
step(g);
sisotool(g);
