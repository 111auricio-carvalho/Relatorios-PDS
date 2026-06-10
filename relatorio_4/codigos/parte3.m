% Parte III - TFTD de x[n] = (0.9*exp(j*pi/3))^n, 0 <= n <= 10
% Investigacao da periodicidade 2*pi

n = 0:10;
x = (0.9 * exp(1j*pi/3)).^n;

% Avaliar em [-2pi, 2pi] para mostrar a periodicidade
w = linspace(-2*pi, 2*pi, 2001);
X = zeros(1, 2001);
for k = 1:2001
  X(k) = sum(x .* exp(-1j * w(k) * n));
end

figure('Position', [100 100 900 500]);

subplot(2,1,1);
plot(w/pi, abs(X), 'b', 'LineWidth', 1.5);
xlabel('\omega/\pi'); ylabel('|X(e^{j\omega})|');
title('Magnitude de X(e^{j\omega}) - periodicidade 2\pi');
xline(-1, '--k'); xline(0, '--k'); xline(1, '--k'); xline(2, '--k');
xticks(-2:0.5:2);
grid on;

subplot(2,1,2);
plot(w/pi, angle(X), 'r', 'LineWidth', 1.5);
xlabel('\omega/\pi'); ylabel('\angle X(e^{j\omega}) (rad)');
title('Fase de X(e^{j\omega}) - periodicidade 2\pi');
xline(-1, '--k'); xline(0, '--k'); xline(1, '--k'); xline(2, '--k');
xticks(-2:0.5:2);
grid on;

sgtitle('TFTD de x[n] = (0,9 e^{j\pi/3})^n, 0 \leq n \leq 10');
print -dpng figuras/parte3.png
