function [y, ny] = conv_m(x, nx, h, nh)
  % Modified convolution function for PDS
  % [y, ny] = conv_m(x, nx, h, nh)
  % y = output sequence
  % ny = support of y
  % x = input sequence with support nx
  % h = impulse response with support nh
  
  nyb = nx(1) + nh(1);
  nye = nx(end) + nh(end);
  ny = nyb:nye;
  y = conv(x, h);
end
