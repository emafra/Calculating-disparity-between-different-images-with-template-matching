clc;clear all;
close all;

left1 = iread('left.png','double');
right1 = iread('right.png','double');

tic

left = (left1(:,:,1) + left1(:,:,2) + left1(:,:,3))/3;
right = (right1(:,:,1) + right1(:,:,2) + right1(:,:,3))/3;

larg = 3; % Largura da janela
xmin = 0; % distância entre o inicio do tamplete e o pixel da imagem right
xmax = 50; % distância entre o fim do tamplete e o pixel da imagem right

result = disparidade(left,right,xmin,xmax,larg);

figure(),idisp(result);
toc

