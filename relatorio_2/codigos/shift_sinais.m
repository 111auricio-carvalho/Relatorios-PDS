function [y, n] = shift_sinais(x, n, n0)
% SHIFT_SINAIS Desloca os indices de x em n0 amostras
% n0 > 0: atraso (desloca para direita o sinal => eixo deslocado para esquerda: k -> n-k. Ops!
% Para x[n-n0], o valor original em n=0 vai para n=n0. Portanto, n_novo = n_antigo + n0
    n = n + n0; 
    y = x;
end
