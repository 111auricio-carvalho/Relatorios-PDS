pkg load signal
b = [1]; a = [1];
n = -20:40;
[h, t] = impz(b, a, n);
disp([t(1:5) h(1:5)]);
disp([t(21) h(21)]);

b2 = [1]; a2 = [1, -1];
[s, t2] = impz(b2, a2, n);
disp([t2(20:25) s(20:25)]);
