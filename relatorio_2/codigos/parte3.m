% Lab_02 - Parte III
clear all; close all; clc;

x = [1 2 3 4 5 6 7 6 5 4 3 2 1];
nx = 0:12;

% a) x1[n] = 0.5 * x[n-3] - 2 * x[n+2]
[x_a1, nx_a1] = shift_sinais(x, nx, 3);
x_a1 = 0.5 * x_a1;
[x_a2, nx_a2] = shift_sinais(x, nx, -2);
x_a2 = 2 * x_a2;

[x1, nx1] = soma_sinais(x_a1, nx_a1, -x_a2, nx_a2);

figure('Name', 'Parte III - Item A');
stem(nx1, x1, 'filled', 'k', 'LineWidth', 1.5);
title('x_1[n] = 0.5x[n-3] - 2x[n+2]');
xlabel('n'); ylabel('Amplitude');
grid on;
print('../figuras/parte3_a.png', '-dpng');

% b) x2[n] = x[2-n] + x[n]x[n+2]
nx_rev = -fliplr(nx);
x_rev = fliplr(x);
[x_b1, nx_b1] = shift_sinais(x_rev, nx_rev, 2);

[x_b_shift, nx_b_shift] = shift_sinais(x, nx, -2);
[x_b2, nx_b2] = mult_sinais(x, nx, x_b_shift, nx_b_shift);

[x2, nx2] = soma_sinais(x_b1, nx_b1, x_b2, nx_b2);

figure('Name', 'Parte III - Item B');
stem(nx2, x2, 'filled', 'm', 'LineWidth', 1.5);
title('x_2[n] = x[2-n] + x[n]x[n+2]');
xlabel('n'); ylabel('Amplitude');
grid on;
print('../figuras/parte3_b.png', '-dpng');
