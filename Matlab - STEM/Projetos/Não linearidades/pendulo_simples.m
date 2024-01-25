function [ sys x0 ] = pendulo_simples(t,x,u,flag,g,L)

if abs(flag)==0
    
    %Condições inciais
    thetai=pi/4; % Posição incial [=] rad
    wi=0;        % Velocidade inicial [=] rad/s
    
    x0=[thetai wi]; % Vetor de condicoes iniciais
    
    sys(1) =  2 ; % Estados Continuos
    sys(2) =  0 ; % Estados Discretos
    sys(3) =  2 ; % Saídas
    sys(4) =  0 ; % Entradas
    sys(5) =  0 ; % Alimentação Direta
    sys(6) =  0 ; % Tempo de amostragem
    
elseif abs(flag)==1
    
    % Variáveis de Estado do sistema;
    theta=  x(1); % Posição Angular
    w=      x(2); % Velocidade Angular
    
    % Equações Diferenciais 
    dthetadt=w;
    dwdt=-g*sin(theta)/L;
    sys=[dthetadt;dwdt];
    
elseif flag==3 
    
    % Vetor de variáveis de saída, neste caso, os estados  
    y=x;
    sys=y;
else
    sys=[];
end