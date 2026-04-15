function [x, n] = seq_imp(n0, n1, n2)
% SEQ_IMP Gera um sinal impulso discreto x[n] = delta[n - n0]
% n1 <= n <= n2
    n = [n1:n2];
    x = (n == n0);
end
