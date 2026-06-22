% Parte IV - Tempo de execucao da fft para 2 <= N <= 2048
% Uso de clock() e etime() conforme solicitado no roteiro

clear; clc; close all;
set(0, 'defaultaxesfontname', 'Arial');
set(0, 'defaultaxesfontsize', 11);

Nvals = 2:2048;
reps = 50;
tempos = zeros(1, length(Nvals));

for idx = 1:length(Nvals)
  N = Nvals(idx);
  x = rand(1, N);
  t1 = clock();
  for r = 1:reps
    X = fft(x);
  end
  t2 = clock();
  tempos(idx) = etime(t2, t1) / reps;
end

ehprimo = isprime(Nvals);

figure('Position', [100 100 900 500]);
plot(Nvals(~ehprimo), tempos(~ehprimo), '.b', 'MarkerSize', 4); hold on;
plot(Nvals(ehprimo), tempos(ehprimo), '.r', 'MarkerSize', 6);
xlabel('N'); ylabel('Tempo médio de execução (s)');
title('Tempo de execução da fft para 2 \leq N \leq 2048');
legend('N composto', 'N primo', 'Location', 'northwest');
grid on;

drawnow;
frame = getframe(gcf);
imwrite(frame.cdata, '../figuras/parte4.png');

fprintf('Tempo medio (N primo): %.6e s\n', mean(tempos(ehprimo)));
fprintf('Tempo medio (N composto): %.6e s\n', mean(tempos(~ehprimo)));
fprintf('Tempo medio em N=2048 (potencia de 2): %.6e s\n', tempos(end));
[~, idxmax] = max(tempos);
fprintf('Maior tempo observado: N=%d (primo? %d), t=%.6e s\n', Nvals(idxmax), ehprimo(idxmax), tempos(idxmax));
disp('Parte IV concluida. Figura salva.');
