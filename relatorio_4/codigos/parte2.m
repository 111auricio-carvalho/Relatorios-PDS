% Parte II - TFTD de x[n] = {1, 2, 3, 4, 5}
% X(e^jw) = sum_{n=0}^{4} x[n] * e^{-jwn}

x = [1 2 3 4 5];
n = 0:4;
w = linspace(0, pi, 501);

X = zeros(1, 501);
for k = 1:501
  X(k) = sum(x .* exp(-1j * w(k) * n));
end

figure('Position', [100 100 800 600]);

subplot(2,2,1);
plot(w/pi, abs(X), 'b', 'LineWidth', 1.5);
xlabel('\omega/\pi'); ylabel('|X(e^{j\omega})|');
title('Magnitude');
grid on;

subplot(2,2,2);
plot(w/pi, angle(X), 'r', 'LineWidth', 1.5);
xlabel('\omega/\pi'); ylabel('\angle X(e^{j\omega}) (rad)');
title('Fase (angulo)');
grid on;

subplot(2,2,3);
plot(w/pi, real(X), 'g', 'LineWidth', 1.5);
xlabel('\omega/\pi'); ylabel('Re\{X(e^{j\omega})\}');
title('Parte Real');
grid on;

subplot(2,2,4);
plot(w/pi, imag(X), 'm', 'LineWidth', 1.5);
xlabel('\omega/\pi'); ylabel('Im\{X(e^{j\omega})\}');
title('Parte Imaginaria');
grid on;

sgtitle('TFTD de x[n] = \{1, 2, 3, 4, 5\}');
print -dpng figuras/parte2.png
