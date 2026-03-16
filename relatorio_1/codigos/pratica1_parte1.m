% Laboratório 1 de PDS - Sinais Fundamentais Discretos
% Parte I

clc; close all; clear;

n = -20:40; % Faixa especificada no roteiro -20 <= n <= 40

%% a) Função impulso unitário
% O impulso unitário d[n] é 1 para n=0 e 0 para n!=0
x_a = (n == 0);

%% b) Função degrau unitário
% O degrau unitário u[n] é 1 para n>=0 e 0 para n<0
x_b = (n >= 0);

%% c) Função rampa
% A rampa r[n] é n*u[n] (n para n>=0 e 0 para n<0)
x_c = n .* (n >= 0);

%% d) Sinal exponencial real discreto: x1[n] = (0,80)^n
x_d = (0.80) .^ n;

%% e) Sinal senoidal discreto: x2[n] = 2*cos(2*pi*(0,3)*n + pi/3)
x_e = 2 * cos(2 * pi * 0.3 * n + pi/3);

%% f) Sinal exponencial complexo: x3[n] = (0,9*e^(j*pi/10))^n
x_f = (0.9 * exp(1j * pi / 10)) .^ n;

% Componentes de x3[n]
x_f_real = real(x_f);
x_f_imag = imag(x_f);
x_f_mag  = abs(x_f);
x_f_fase = angle(x_f);

% -------------------------
% Plotagem da Parte I
% -------------------------

figure(1);
subplot(3,1,1);
stem(n, x_a, 'filled', 'MarkerSize', 4);
title('a) Função Impulso Unitário \delta[n]');
xlabel('n'); ylabel('Amplitude'); grid on;
xlim([-20 40]);

subplot(3,1,2);
stem(n, x_b, 'filled', 'MarkerSize', 4);
title('b) Função Degrau Unitário u[n]');
xlabel('n'); ylabel('Amplitude'); grid on;
xlim([-20 40]);

subplot(3,1,3);
stem(n, x_c, 'filled', 'MarkerSize', 4);
title('c) Função Rampa r[n]');
xlabel('n'); ylabel('Amplitude'); grid on;
xlim([-20 40]);
