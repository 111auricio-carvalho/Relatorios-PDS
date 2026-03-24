% parte1_d.m
pkg load signal;
n = -20:40;
x_d = zeros(size(n));
b = [1]; a = [1, -0.8];
[h, ~] = impz(b, a, 41);
x_d(n >= 0) = h;

figure(1);
stem(n, x_d, 'filled');
title('d) Sinal Exponencial Real Discreto');
xlabel('n'); ylabel('Amplitude'); grid on; xlim([-20 40]);
print('../figuras/parte1_d.png', '-dpng');
