% parte2_a.m
A = [-1, 0, 1, 2, 3, 4, 4, 4, 4]; n_A = 0:length(A)-1;
B = [1, 1, 1, 1, 0, -1, -1, -1, -1];
X1 = 2*A - B;
figure(2);
stem(n_A, X1, 'filled'); title('a) X_1[n] = 2A[n] - B[n]'); xlabel('n'); ylabel('Amplitude'); grid on;
print('../figuras/parte2_a.png', '-dpng');
