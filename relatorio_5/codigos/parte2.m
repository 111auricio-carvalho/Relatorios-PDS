% Parte II - x[n] = 1, 0 <= n <= 3
% a) TFTD X(e^jw) calculada pela definicao (espectro continuo)
% b) TFD de 4 pontos, comparada com as amostras da TFTD em w = 2*pi*k/N

clear; clc; close all;
set(0, 'defaultaxesfontname', 'Arial');
set(0, 'defaultaxesfontsize', 11);

n = 0:3;
x = ones(1,4);
N = 4;

% a) TFTD continua
w = linspace(-pi, pi, 1001);
Xw = zeros(1, length(w));
for idx = 1:length(w)
  Xw(idx) = sum(x .* exp(-1j*w(idx)*n));
end

% b) TFD de N=4 pontos
Xk = fft(x, N);
k = 0:N-1;
wk = 2*pi*k/N;
wk_plot = wk; wk_plot(wk_plot > pi) = wk_plot(wk_plot > pi) - 2*pi; % p/ exibir em [-pi,pi]

figure('Position', [100 100 900 400]);

subplot(1,2,1);
plot(w/pi, abs(Xw), 'b', 'LineWidth', 1.5); hold on;
stem(wk_plot/pi, abs(Xk), 'r', 'filled');
xlabel('\omega/\pi'); ylabel('|X(e^{j\omega})|, |X[k]|');
title('Magnitude: TFTD (linha) e TFD N=4 (marcadores)');
legend('TFTD', 'TFD', 'Location', 'south');
grid on;

subplot(1,2,2);
plot(w/pi, angle(Xw), 'b', 'LineWidth', 1.5); hold on;
stem(wk_plot/pi, angle(Xk), 'r', 'filled');
xlabel('\omega/\pi'); ylabel('\angle X(e^{j\omega}), \angle X[k] (rad)');
title('Fase: TFTD (linha) e TFD N=4 (marcadores)');
legend('TFTD', 'TFD', 'Location', 'south');
grid on;

drawnow;
frame = getframe(gcf);
imwrite(frame.cdata, '../figuras/parte2.png');

disp('TFD de 4 pontos X[k]:'); disp(Xk);
disp('Parte II concluida. Figura salva.');
