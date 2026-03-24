% parte1_b.m
pkg load signal;
n = -20:40;
x_b = zeros(size(n));
b = [1]; a = [1, -1];
[h, ~] = impz(b, a, 41);
x_b(n >= 0) = h;

figure(1);
stem(n, x_b, 'filled');
title('b) Funcao Degrau Unitario u[n]');
xlabel('n'); ylabel('Amplitude'); grid on; xlim([-20 40]);
print('../figuras/parte1_b.png', '-dpng');
