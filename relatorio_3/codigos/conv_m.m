function [y, ny] = conv_m(x, nx, h, nh)
  % Modified convolution function for PDS
  % [y, ny] = conv_m(x, nx, h, nh)
  % y = output sequence
  % ny = support of y
  % x = input sequence with support nx
  % h = impulse response with support nh
  
  % Se nx for apenas o índice de início, gera o vetor completo
  if length(nx) == 1
    nx = nx:(nx + length(x) - 1);
  end
  
  % Se nh for apenas o índice de início, gera o vetor completo
  if length(nh) == 1
    nh = nh:(nh + length(h) - 1);
  end

  nyb = nx(1) + nh(1);
  nye = nx(end) + nh(end);
  ny = nyb:nye;
  y = conv(x, h);
end
