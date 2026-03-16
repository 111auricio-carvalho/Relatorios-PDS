% parte1_d.m
n = -20:40;
x_d = (0.80) .^ n;
figure(1);
stem(n, x_d, 'filled');
title('d) Sinal Exponencial Real Discreto');
xlabel('n'); ylabel('Amplitude'); grid on; xlim([-20 40]);
print('../figuras/parte1_d.png', '-dpng');
