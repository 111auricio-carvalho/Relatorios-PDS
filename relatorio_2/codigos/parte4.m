% Lab_02 - Parte IV
clear all; close all; clc;

n = -25:25;
x = exp((-0.2 + 0.3j) * n);

figure('Name', 'Parte IV', 'Position', [100 100 800 600]);

subplot(2,2,1);
stem(n, real(x), 'filled', 'b');
title('Parte Real'); xlabel('n'); grid on;

subplot(2,2,2);
stem(n, imag(x), 'filled', 'r');
title('Parte Imaginária'); xlabel('n'); grid on;

subplot(2,2,3);
stem(n, abs(x), 'filled', 'k');
title('Magnitude'); xlabel('n'); grid on;

subplot(2,2,4);
stem(n, angle(x), 'filled', 'm');
title('Fase (radianos)'); xlabel('n'); grid on;

print('../figuras/parte4.png', '-dpng');
