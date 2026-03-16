% parte2_b.m
A = [-1, 0, 1, 2, 3, 4, 4, 4, 4]; n_A = 0:length(A)-1;
B = [1, 1, 1, 1, 0, -1, -1, -1, -1];
X2 = A + 3*B;
figure(2);
stem(n_A, X2, 'filled'); title('b) X_2[n] = A[n] + 3B[n]'); xlabel('n'); ylabel('Amplitude'); grid on;
print('../figuras/parte2_b.png', '-dpng');
