%Válvula de ganho de sinal ou energia que está presente nos trabalhos de 
%transitores na eletrônica e as molas em mecânica
tspan = [0 3000];
y0 = [2; 0];
Mu = 100;
ode = @(t,y) vanderpoldemo(t,y,Mu);
[t,y] = ode45(ode, tspan, y0);

% Plot solution

plot(t,y(:,1))
axis([0 300 -3 3])
xlabel('t')
ylabel('solution y')