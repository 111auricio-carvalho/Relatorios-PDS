function [y, n] = soma_sinais(x1, n1, x2, n2)
% SOMA_SINAIS Adiciona dois vetores de sinais discretos sobre um mesmo eixo n
% y(n) = x1(n) + x2(n)
    n = min(min(n1),min(n2)):max(max(n1),max(n2)); % cria o vetor tempo combinado
    y1 = zeros(1, length(n)); 
    y2 = zeros(1, length(n)); 
    
    y1((n>=min(n1))&(n<=max(n1))) = x1; % Octave aceita logical indexing
    y2((n>=min(n2))&(n<=max(n2))) = x2; 
    
    y = y1 + y2;
end
