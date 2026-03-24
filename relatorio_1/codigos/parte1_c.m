% parte1_c.m
pkg load signal;
n = -20:40;
x_c = zeros(size(n));
b = [0, 1]; a = [1, -2, 1];
[h, ~] = impz(b, a, 41);
x_c(n >= 0) = h;

figure(1);
stem(n, x_c, 'filled');
title('c) Funcao Rampa r[n]');
xlabel('n'); ylabel('Amplitude'); grid on; xlim([-20 40]);
print('../figuras/parte1_c.png', '-dpng');
