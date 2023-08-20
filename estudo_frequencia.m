clc; clear; close all;

k = 5;
z = 0.353;
den = k*k;
num = [1 2*k*z k*k] ;

g = tf(den, num)
bode(g);