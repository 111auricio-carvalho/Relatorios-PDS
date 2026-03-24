% parte1_a.m
pkg load signal;
n = -20:40;
x_a = zeros(size(n));
b = [1]; a = [1];
[h, ~] = impz(b, a, 41);
x_a(n >= 0) = h;

figure(1);
stem(n, x_a, 'filled');
title('a) Funcao Impulso Unitario \delta[n]');
xlabel('n'); ylabel('Amplitude'); grid on; xlim([-20 40]);
print('../figuras/parte1_a.png', '-dpng');
