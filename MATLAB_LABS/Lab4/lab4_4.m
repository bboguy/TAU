% a = -60:0.01:60;
% q = ((2./pi).*asin(12./a)) + (72./(a.*pi)).*sqrt(1 - (1296./(a.^2)));
% figure;
% hold on;
% plot(a,q,"Color","red");
% xlabel('a');
% ylabel('q(a)');
% hold off;
% grid on
a = 0:0.01:60;
q = -1.*20.*log10(((2./pi).*asin(12./a)) + (72./(a.*pi)).*sqrt(1 - (1296./(a.^2))));
figure;
hold on;
plot(a,q,"Color","red");
xlabel('a');
ylabel('-20lg(q(a))');
hold off;
grid on
W=tf([30], [0.01 0.2 1 0])
figure
bode(W)
