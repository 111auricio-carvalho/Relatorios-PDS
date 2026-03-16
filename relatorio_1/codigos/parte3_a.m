% parte3_a.m
imp = @(n) (n == 0);
n_III = -10:10;
x_a = 3*imp(n_III + 2) - 0.5*imp(n_III) + 5*imp(n_III - 1) - 4*imp(n_III - 5);
figure(3);
stem(n_III, x_a, 'filled'); title('a) x[n]'); xlabel('n'); ylabel('Amplitude'); grid on;
print('../figuras/parte3_a.png', '-dpng');
