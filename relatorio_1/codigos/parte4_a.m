% parte4_a.m
n_IV_a = -20:20;
seq_a = cos(0.1*n_IV_a - pi);
figure(4);
stem(n_IV_a, seq_a, 'filled'); title('a) cos(0.1n - \pi), -20 \leq n \leq 20'); xlabel('n'); ylabel('Amplitude'); grid on;
print('../figuras/parte4_a.png', '-dpng');
