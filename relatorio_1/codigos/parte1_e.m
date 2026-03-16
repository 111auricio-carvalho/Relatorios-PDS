% parte1_e.m
n = -20:40;
x_e = 2 * cos(2 * pi * 0.3 * n + pi/3);
figure(1);
stem(n, x_e, 'filled');
title('e) Sinal Senoidal Discreto');
xlabel('n'); ylabel('Amplitude'); grid on; xlim([-20 40]);
print('../figuras/parte1_e.png', '-dpng');
