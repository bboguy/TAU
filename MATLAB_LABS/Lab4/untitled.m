clc;
clear all;

W=tf([30], [0.01 0.2 1 0])
figure
bode(W)

a = 0:0.01:30;
q = -20 * log10((2/pi).* asin(36./a)+ 72./(a.*pi).*sqrt(1-1296./a.^2));
figure;
plot(a,q);
figure;
yline(-pi);
