% Parte III - Alta densidade vs alta resolucao espectral
% x[n] = cos(0.48*pi*n) + cos(0.52*pi*n)
% a) N = 11 amostras (0 <= n <= 10)   -> baixa resolucao
% b) N = 101 amostras (0 <= n <= 100) -> alta resolucao

clear; clc; close all;
set(0, 'defaultaxesfontname', 'Arial');
set(0, 'defaultaxesfontsize', 11);

% a)
n_a = 0:10;
x_a = cos(0.48*pi*n_a) + cos(0.52*pi*n_a);
Na = length(n_a);
Xa = fft(x_a, Na);
fa = (0:Na-1)/Na;            % frequencia normalizada, ciclos/amostra

% b)
n_b = 0:100;
x_b = cos(0.48*pi*n_b) + cos(0.52*pi*n_b);
Nb = length(n_b);
Xb = fft(x_b, Nb);
fb = (0:Nb-1)/Nb;

figure('Position', [100 100 900 400]);

subplot(1,2,1);
stem(fa, abs(Xa), 'filled');
xlabel('Frequência normalizada f (ciclos/amostra)');
ylabel('|X[k]|');
title('TFD - N = 11 amostras (baixa resolução)');
xlim([0.15 0.35]); grid on;

subplot(1,2,2);
stem(fb, abs(Xb), 'filled');
xlabel('Frequência normalizada f (ciclos/amostra)');
ylabel('|X[k]|');
title('TFD - N = 101 amostras (alta resolução)');
xlim([0.15 0.35]); grid on;

drawnow;
frame = getframe(gcf);
imwrite(frame.cdata, '../figuras/parte3.png');

disp('Parte III concluida. Figura salva.');
