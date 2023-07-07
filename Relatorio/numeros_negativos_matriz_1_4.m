clc;
clear;

linha = input('Quantidade de linha: ');
coluna = input('Quantidade de coluna: ');

m = randn(linha, coluna)*100 
%gera matriz de forma aleatória (o produto é para ter valores maiores)

numNegativos = sum(m(:) < 0); 
%somatório de valores negativos 
fprintf('Existem %d números negativos', numNegativos)