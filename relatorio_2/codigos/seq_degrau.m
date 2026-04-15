function [x, n] = seq_degrau(n0, n1, n2)
% SEQ_DEGRAU Gera um sinal degrau discreto x[n] = u[n - n0]
% n1 <= n <= n2
    n = [n1:n2];
    x = (n >= n0);
end
