num1 = [1];
den1 = [1 1 0];

sys1 = tf(num1, den1) %declaração de função de transferência
sys2 = step(num1, den1) %resposta por degrau

ltiview('pzmap',sys1)

