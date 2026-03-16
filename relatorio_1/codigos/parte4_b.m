% parte4_b.m
n_IV_b = -10:20;
seq_b = cos(0.1*n_IV_b - pi);
figure(4);
stem(n_IV_b, seq_b, 'filled'); title('b) cos(0.1n - \pi), -10 \leq n \leq 20'); xlabel('n'); ylabel('Amplitude'); grid on;
print('../figuras/parte4_b.png', '-dpng');
