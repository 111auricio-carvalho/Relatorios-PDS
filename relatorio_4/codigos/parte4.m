% Parte IV - Propriedade de deslocamento em frequencia da TFTD
% x[n] = cos(pi*n/2),  0 <= n <= 10
% y[n] = exp(j*pi*n/4) * x[n]
% Propriedade: Y(e^jw) = X(e^j(w - pi/4))

clear; clc; close all;

n = 0:10;
x = cos(pi*n/2);
y = exp(1j*pi*n/4) .* x;

w = linspace(-pi, pi, 1001);
Xw = zeros(1, 1001);
Yw = zeros(1, 1001);
for k = 1:1001
  Xw(k) = sum(x .* exp(-1j * w(k) * n));
  Yw(k) = sum(y .* exp(-1j * w(k) * n));
end

figure('Position', [100 100 900 600]);

subplot(2,2,1);
plot(w/pi, abs(Xw), 'b', 'LineWidth', 1.5);
xlabel('\omega/\pi'); ylabel('|X(e^{j\omega})|');
title('Magnitude de X(e^{j\omega})');
grid on;

subplot(2,2,2);
plot(w/pi, abs(Yw), 'r', 'LineWidth', 1.5);
xlabel('\omega/\pi'); ylabel('|Y(e^{j\omega})|');
title('Magnitude de Y(e^{j\omega}) = X(e^{j(\omega-\pi/4)})');
grid on;

subplot(2,2,3);
plot(w/pi, angle(Xw), 'b', 'LineWidth', 1.5);
xlabel('\omega/\pi'); ylabel('\angle X(e^{j\omega}) (rad)');
title('Fase de X(e^{j\omega})');
grid on;

subplot(2,2,4);
plot(w/pi, angle(Yw), 'r', 'LineWidth', 1.5);
xlabel('\omega/\pi'); ylabel('\angle Y(e^{j\omega}) (rad)');
title('Fase de Y(e^{j\omega})');
grid on;

saveas(gcf, '../figuras/parte4.png');
disp('Parte IV concluida. Figura salva.');
