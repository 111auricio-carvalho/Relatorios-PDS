% Lab_02 - Parte II
clear all; close all; clc;

% -- Item A --
figure('Name', 'Parte II - Item A');
[x1_a, n1_a] = seq_imp(-2, -10, 10);
[x2_a, n2_a] = seq_imp(4, -10, 10);
x1_a = 2 * x1_a;

[xa, na] = soma_sinais(x1_a, n1_a, -x2_a, n2_a);
stem(na, xa, 'filled', 'b', 'LineWidth', 1.5);
title('x[n] = 2\delta[n+2] - \delta[n-4]');
xlabel('n'); ylabel('Amplitude');
grid on;
print('../figuras/parte2_a.png', '-dpng');

% -- Item B --
figure('Name', 'Parte II - Item B');
[u0, nu0] = seq_degrau(0, 0, 40);
[u10, nu10] = seq_degrau(10, 0, 40);
[u20, nu20] = seq_degrau(20, 0, 40);

[diff1, ndiff1] = soma_sinais(u0, nu0, -u10, nu10);
[comp1, ncomp1] = mult_sinais(ndiff1, ndiff1, diff1, ndiff1);

[diff2, ndiff2] = soma_sinais(u10, nu10, -u20, nu20);
exp_part = 10 * exp(-0.3 * (ndiff2 - 10));
[comp2, ncomp2] = mult_sinais(diff2, ndiff2, exp_part, ndiff2);

[xb, nb] = soma_sinais(comp1, ncomp1, comp2, ncomp2);
stem(nb, xb, 'filled', 'r', 'LineWidth', 1.5);
title('Sinal Composto com Degraus e Exponencial');
xlabel('n'); ylabel('Amplitude');
grid on;
print('../figuras/parte2_b.png', '-dpng');
