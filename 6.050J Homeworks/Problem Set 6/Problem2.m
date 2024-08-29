disp('a.')
p_M = 10000 / 30000
p_H = 20000 / 30000

disp('b.')
E = p_M * log2(1/p_M) + p_H * log2(1/p_H)

disp('c.')
cij = [0.5 0.5;
       1   1];
cji = [0.5 0.5;
       1   0];
J_C = cji(1, 1) * log2(1/cji(1, 1)) + cji(1, 2) * log2(1/cji(1, 2))

disp('d.')
J_I = cji(2, 1) * log2(1/cji(2, 1)) + 0
% cji(2, 2) * log2(1/cji(2, 2)) = 0

disp('e.')
p_C = 2/3;
p_I = 1/3;
J = p_C * J_C + p_I * J_I

disp('f.')
disp('skipped.')