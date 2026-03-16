% parte1_f.m
n = -20:40;
x_f = (0.9 * exp(1j * pi / 10)) .^ n;
x_f_real = real(x_f); x_f_imag = imag(x_f);
x_f_mag = abs(x_f); x_f_fase = angle(x_f);
figure(1);
subplot(2,2,1); stem(n, x_f_real, 'filled'); title('Parte Real');
subplot(2,2,2); stem(n, x_f_imag, 'filled'); title('Parte Imaginaria');
subplot(2,2,3); stem(n, x_f_mag, 'filled');  title('Magnitude');
subplot(2,2,4); stem(n, x_f_fase, 'filled'); title('Fase');
print('../figuras/parte1_f.png', '-dpng');
