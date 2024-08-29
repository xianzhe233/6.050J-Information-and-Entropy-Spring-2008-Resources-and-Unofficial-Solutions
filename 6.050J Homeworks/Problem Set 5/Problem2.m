e = 0.08

disp('a.')
C = 1 - e * log2(1/e) - (1 - e) * log2(1/(1-e))

disp('b.')
rB = 0.9;
rZ = 0.1;
I = rB * log2(1/rB) + rZ * log2(1/rZ)

disp('c.')
I <= C

disp('d.')
Wm = C / I

disp('e.')
disp('BB\tBZ\tZB\tZZ')
disp('1 \t01\t001   0001')
E = 0.81 * 1 + 0.09 * 2 + 0.09 * 3 + 0.01 * 4
E <= C