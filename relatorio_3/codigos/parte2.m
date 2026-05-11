% Lab PDS 03 - Parte II
% Verificação das propriedades da Convolução Linear

clear; clc; close all;

% Definição dos sinais base
% x1[n] = n * (u[n+8] - u[n-10])
n1 = -8:9;
x1 = n1; 

% x2[n] = cos(0.1*pi*n) * (u[n] - u[n-15])
n2 = 0:14;
x2 = cos(0.1 * pi * n2);

% x3[n] = (1.2)^n * (u[n+5] - u[n-10])
n3 = -5:9;
x3 = (1.2).^n3;

% a) Comutação: x1 * x2 = x2 * x1
[ya, nya] = conv_m(x1, n1, x2, n2);
[yb, nyb] = conv_m(x2, n2, x1, n1);
err_comut = norm(ya - yb);

% b) Associação: (x1 * x2) * x3 = x1 * (x2 * x3)
[y12, n12] = conv_m(x1, n1, x2, n2);
[y_assoc1, n_assoc1] = conv_m(y12, n12, x3, n3);

[y23, n23] = conv_m(x2, n2, x3, n3);
[y_assoc2, n_assoc2] = conv_m(x1, n1, y23, n23);
err_assoc = norm(y_assoc1 - y_assoc2);

% c) Distribuição: x1 * (x2 + x3) = x1 * x2 + x1 * x3
% Nota: Para somar x2 e x3, eles devem estar no mesmo suporte de tempo
n_sum = min(min(n2), min(n3)) : max(max(n2), max(n3));
x2_ext = zeros(1, length(n_sum));
x2_ext(n_sum >= n2(1) & n_sum <= n2(end)) = x2;
x3_ext = zeros(1, length(n_sum));
x3_ext(n_sum >= n3(1) & n_sum <= n3(end)) = x3;

[y_dist1, n_dist1] = conv_m(x1, n1, (x2_ext + x3_ext), n_sum);
[y_p1, n_p1] = conv_m(x1, n1, x2, n2);
[y_p2, n_p2] = conv_m(x1, n1, x3, n3);

% Somar os resultados parciais (precisa alinhar os tempos)
ny_sum = min(min(n_p1), min(n_p2)) : max(max(n_p1), max(n_p2));
y_p1_ext = zeros(1, length(ny_sum));
y_p1_ext(ny_sum >= n_p1(1) & ny_sum <= n_p1(end)) = y_p1;
y_p2_ext = zeros(1, length(ny_sum));
y_p2_ext(ny_sum >= n_p2(1) & ny_sum <= n_p2(end)) = y_p2;
y_dist2 = y_p1_ext + y_p2_ext;

err_dist = norm(y_dist1 - y_dist2);

% d) Identidade: x[n] * delta[n - n0] = x[n - n0]
n0 = 5;
n_delta = n0;
delta = 1;
[y_id, ny_id] = conv_m(x1, n1, delta, n_delta);
% O resultado deve ser x1 deslocado para n1 + n0
% Vamos comparar o sinal resultante com x1 original no novo suporte
err_id = norm(y_id - x1);

% Exibição dos erros (devem ser próximos de zero)
fprintf('Erro Comutação: %e\n', err_comut);
fprintf('Erro Associação: %e\n', err_assoc);
fprintf('Erro Distribuição: %e\n', err_dist);
fprintf('Erro Identidade: %e\n', err_id);

% Plotagem de um exemplo (Comutação)
figure;
subplot(2,1,1); stem(nya, ya, 'filled'); title('x1 * x2'); grid on;
subplot(2,1,2); stem(nyb, yb, 'filled'); title('x2 * x1'); grid on;
saveas(gcf, '../figuras/parte2_comutacao.png');

disp('Parte II concluída.');
