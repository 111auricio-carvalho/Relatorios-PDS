% Parte I - Equacoes da TFD em forma vetorial (matriz WN)
% Analise:  X = WN*x
% Sintese:  x = (1/N)*WN'*X,  com WN' = conj(WN), pois WN e simetrica

clear; clc; close all;

N = 4;
n = 0:N-1;
k = n;
WN = exp(-1j*2*pi*k'*n/N);   % WN(k+1,n+1) = exp(-j*2*pi*k*n/N)

x = [1 2 3 4];               % sequencia de teste

X = WN*x.';                  % Analise (equacao a)
x_rec = (1/N)*conj(WN)*X;    % Sintese (equacao b)

disp('Matriz WN (N=4):'); disp(WN);
disp('Sequencia original x:'); disp(x);
disp('TFD via X = WN*x:'); disp(X.');
disp('TFD via fft (Octave), para comparacao:'); disp(fft(x));
disp('Erro entre WN*x e fft(x) (norma):'); disp(norm(X.' - fft(x)));
disp('Sequencia reconstruida via x = (1/N)*WN_conj*X:'); disp(x_rec.');
disp('Erro de reconstrucao (norma):'); disp(norm(x.' - x_rec));
