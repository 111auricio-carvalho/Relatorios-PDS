% parte1_b.m
n = -20:40;
x_b = (n >= 0);
figure(1);
stem(n, x_b, 'filled');
title('b) Funcao Degrau Unitario u[n]');
xlabel('n'); ylabel('Amplitude'); grid on; xlim([-20 40]);
print('../figuras/parte1_b.png', '-dpng');
