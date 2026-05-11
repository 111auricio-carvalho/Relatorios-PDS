% Lab PDS 03 - Parte I
% Convolução entre pulso retangular e resposta exponencial

% Limpando ambiente
clear; clc; close all;

% Definindo os sinais
% x[n] = u[n] - u[n-10]
nx = 0:9;
x = ones(1, length(nx));

% h[n] = (0.9)^n * u[n]
% Como h[n] é infinito, usaremos um intervalo finito para plotagem/convolução
nh = 0:50;
h = (0.9).^nh;

% Cálculo da saída via conv_m
[y, ny] = conv_m(x, nx, h, nh);

% Plotagem dos resultados
figure('Position', [100, 100, 800, 800]);

subplot(3, 1, 1);
stem(nx, x, 'filled', 'LineWidth', 1.5);
title('Sinal de Entrada x[n] = u[n] - u[n-10]');
xlabel('n'); ylabel('x[n]');
grid on; axis([min(nx)-2, max(nx)+2, -0.2, 1.2]);

subplot(3, 1, 2);
stem(nh, h, 'filled', 'LineWidth', 1.5);
title('Resposta ao Impulso h[n] = (0,9)^n u[n]');
xlabel('n'); ylabel('h[n]');
grid on; axis([min(nh)-2, max(nh)+2, -0.2, 1.2]);

subplot(3, 1, 3);
stem(ny, y, 'filled', 'LineWidth', 1.5, 'Color', 'r');
title('Saída do Sistema y[n] = x[n] * h[n]');
xlabel('n'); ylabel('y[n]');
grid on;

% Salvando a figura
saveas(gcf, '../figuras/parte1.png');
disp('Parte I concluída. Figura salva.');
