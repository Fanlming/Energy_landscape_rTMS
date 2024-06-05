clc
clear all;close all
load Mean_Base_dym.mat h J prob2 probN
figure(1)
imagesc(J);colorbar('limits',[-0.4,0.4],'fontsize',20);colormap('gray')
h1 = figure(1);print(h1,'Mean_base_J.jpg','-r300','-djpeg');
figure(2)
imagesc(h');colorbar('limits',[-0.05,0.05],'fontsize',20);colormap('gray')
set(gca,'Position',[0.11 0.79 0.69 0.134]);
h2 = figure(2);print(h2,'Mean_base_h.jpg','-r300','-djpeg');
figure(7)
scatter(log(prob2),log(probN),'g')
set(gca,'fontsize',15)
box('on')
h3 = figure(2);print(h3,'Mean_base_prob.jpg','-r300','-djpeg');



load postFROdym.mat h J prob2 probN
figure(3)
imagesc(J);colorbar('limits',[-0.4,0.4],'fontsize',20);colormap('gray')
h1 = figure(3);print(h1,'postFRO_J.jpg','-r300','-djpeg');
figure(4)
imagesc(h');colorbar('limits',[-0.05,0.05],'fontsize',20);colormap('gray')
set(gca,'Position',[0.11 0.79 0.69 0.134]);
h2 = figure(4);print(h2,'postFRO_h.jpg','-r300','-djpeg');

figure(8)
scatter(log(prob2),log(probN),'b')
set(gca,'fontsize',15)
box('on')
h3 = figure(8);print(h3,'postFRO_prob.jpg','-r300','-djpeg');



load postOCCdym.mat h J prob2 probN
figure(5)
imagesc(J);colorbar('limits',[-0.4,0.4],'fontsize',20);colormap('gray')
h1 = figure(5);print(h1,'postOCC_J.jpg','-r300','-djpeg');
figure(6)
imagesc(h');colorbar('limits',[-0.05,0.05],'fontsize',20);colormap('gray')
set(gca,'Position',[0.11 0.79 0.69 0.134]);
h2 = figure(6);print(h2,'postOCC_h.jpg','-r300','-djpeg');

figure(9)
scatter(log(prob2),log(probN),'m')
set(gca,'fontsize',15)
box('on')
h3 = figure(9);print(h3,'postOCC_prob.jpg','-r300','-djpeg');
