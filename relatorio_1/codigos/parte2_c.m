% parte2_c.m
A = [-1, 0, 1, 2, 3, 4, 4, 4, 4]; n_A = 0:length(A)-1;
B = [1, 1, 1, 1, 0, -1, -1, -1, -1];
X2 = A + 3*B;
X3 = fliplr(X2); n_X3 = -fliplr(n_A);
figure(2);
stem(n_X3, X3, 'filled'); title('c) X_3[n] = X_2[-n]'); xlabel('n'); ylabel('Amplitude'); grid on;
print('../figuras/parte2_c.png', '-dpng');
