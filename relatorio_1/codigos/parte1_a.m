% parte1_a.m
n = -20:40;
x_a = (n == 0);
figure(1);
stem(n, x_a, 'filled');
title('a) Função Impulso Unitário \delta[n]');
xlabel('n'); ylabel('Amplitude'); grid on; xlim([-20 40]);
print('../figuras/parte1_a.png', '-dpng');
