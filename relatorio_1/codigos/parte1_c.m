% parte1_c.m
n = -20:40;
x_c = n .* (n >= 0);
figure(1);
stem(n, x_c, 'filled');
title('c) Função Rampa r[n]');
xlabel('n'); ylabel('Amplitude'); grid on; xlim([-20 40]);
print('../figuras/parte1_c.png', '-dpng');
