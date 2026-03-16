% parte3_b.m
imp = @(n) (n == 0);
n_III = -10:10;
y_b = imp(n_III + 1) - 2*imp(n_III - 1) + 5*imp(n_III - 4);
figure(3);
stem(n_III, y_b, 'filled'); title('b) y[n]'); xlabel('n'); ylabel('Amplitude'); grid on;
print('../figuras/parte3_b.png', '-dpng');
