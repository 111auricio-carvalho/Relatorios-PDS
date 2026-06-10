% Parte I - TFTD de x[n] = (0.5)^n * u[n]
% X(e^jw) = 1 / (1 - 0.5*e^{-jw}), forma fechada da serie geometrica

clear; clc; close all;

w = linspace(0, pi, 501);
X = 1 ./ (1 - 0.5 * exp(-1j * w));

figure('Position', [100 100 800 600]);

subplot(2,2,1);
plot(w/pi, abs(X), 'b', 'LineWidth', 1.5);
xlabel('\omega/\pi'); ylabel('|X(e^{j\omega})|');
title('Magnitude');
grid on;

subplot(2,2,2);
plot(w/pi, angle(X), 'r', 'LineWidth', 1.5);
xlabel('\omega/\pi'); ylabel('\angle X(e^{j\omega}) (rad)');
title('Fase (angulo)');
grid on;

subplot(2,2,3);
plot(w/pi, real(X), 'g', 'LineWidth', 1.5);
xlabel('\omega/\pi'); ylabel('Re\{X(e^{j\omega})\}');
title('Parte Real');
grid on;

subplot(2,2,4);
plot(w/pi, imag(X), 'm', 'LineWidth', 1.5);
xlabel('\omega/\pi'); ylabel('Im\{X(e^{j\omega})\}');
title('Parte Imaginaria');
grid on;

saveas(gcf, '../figuras/parte1.png');
disp('Parte I concluida. Figura salva.');
