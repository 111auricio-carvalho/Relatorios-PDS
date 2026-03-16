% Laboratório 1 de PDS - Sinais Fundamentais Discretos
% Parte II, III e IV

clc; close all; clear;

%% -------------------------
%% Parte II - Operações com Sinais
%% -------------------------
disp('--- Parte II ---');
A = [-1, 0, 1, 2, 3, 4, 4, 4, 4];
% Assumindo que o primeiro elemento corresponde a n=0
n_A = 0 : length(A)-1; 

B = [1, 1, 1, 1, 0, -1, -1, -1, -1];
n_B = 0 : length(B)-1; 

% a) X1[n] = 2A[n] - B[n]
X1 = 2*A - B;

% b) X2[n] = A[n] + 3B[n]
X2 = A + 3*B;

% c) X3[n] = X2[-n]
X3 = fliplr(X2);
n_X3 = -fliplr(n_A); % Inverte o eixo do tempo

%% Plotagem da Parte II
figure(2);
subplot(3,1,1);
stem(n_A, X1, 'filled'); title('a) X_1[n] = 2A[n] - B[n]'); xlabel('n'); ylabel('Amplitude'); grid on;

subplot(3,1,2);
stem(n_A, X2, 'filled'); title('b) X_2[n] = A[n] + 3B[n]'); xlabel('n'); ylabel('Amplitude'); grid on;

subplot(3,1,3);
stem(n_X3, X3, 'filled'); title('c) X_3[n] = X_2[-n]'); xlabel('n'); ylabel('Amplitude'); grid on;


%% -------------------------
%% Parte III - Plotagem de Sequências
%% -------------------------
disp('--- Parte III ---');

% Função anônima para impulso (delta de Kronecker)
imp = @(n) (n == 0);

n_III = -10:10; 

% a) x[n] = 3δ(n + 2) − 0,5δ(n) + 5δ(n − 1) − 4δ(n − 5)
x_III_a = 3*imp(n_III + 2) - 0.5*imp(n_III) + 5*imp(n_III - 1) - 4*imp(n_III - 5);

% b) y[n] = δ(n + 1) − 2δ(n − 1) + 5δ(n − 4)
y_III_b = imp(n_III + 1) - 2*imp(n_III - 1) + 5*imp(n_III - 4);

%% Plotagem da Parte III
figure(3);
subplot(2,1,1);
stem(n_III, x_III_a, 'filled'); title('a) x[n]'); xlabel('n'); ylabel('Amplitude'); grid on;

subplot(2,1,2);
stem(n_III, y_III_b, 'filled'); title('b) y[n]'); xlabel('n'); ylabel('Amplitude'); grid on;


%% -------------------------
%% Parte IV - Periodicidade de Sequências
%% -------------------------
disp('--- Parte IV ---');

% a) cos[0,1n - pi] , -20 <= n <= 20
n_IV_a = -20:20;
seq_a = cos(0.1*n_IV_a - pi);

% b) cos[0,1n - pi] , -10 <= n <= 20
n_IV_b = -10:20;
seq_b = cos(0.1*n_IV_b - pi);

%% Plotagem Parte IV
figure(4);
subplot(2,1,1);
stem(n_IV_a, seq_a, 'filled'); title('a) cos(0.1n - \pi), -20 \leq n \leq 20'); xlabel('n'); ylabel('Amplitude'); grid on;

subplot(2,1,2);
stem(n_IV_b, seq_b, 'filled'); title('b) cos(0.1n - \pi), -10 \leq n \leq 20'); xlabel('n'); ylabel('Amplitude'); grid on;

disp('Análise de Periodicidade:');
disp('Um sinal discreto cos(W0*n + phi) é periódico somente se W0/2*pi for um número racional.');
disp('Neste caso, W0 = 0.1.');
disp('T = 2*pi / W0 = 2*pi / 0.1 = 20*pi');
disp('Como 20*pi não é um número inteiro (e não há como expressar W0/2*pi = 0.1/2*pi como racional), a sequência NÃO é periódica.');
