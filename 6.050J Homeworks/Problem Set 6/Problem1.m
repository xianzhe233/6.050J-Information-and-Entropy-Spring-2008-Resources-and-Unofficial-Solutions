disp('a.')
p_ai = 0.25;
p_B0 = 0.75;
p_B1 = 0.25;
I = 4 * p_ai * log2(1/p_ai)
J = p_B0 * log2(1/p_B0) + p_B1 * log2(1/p_B1)

cij = [1 0 1 1;
       0 1 0 0];
cji = [1/3 0 1/3 1/3;
       0 1 0 0];

N = 0;
L = 0;

for i = 1:4
    if cij(1, i) ~= 0
        N = N + p_ai * cij(1, i) * log2(1/cij(1, i));
    end
    if cij(2, i) ~= 0
        N = N + p_ai * cij(2, i) * log2(1/cij(2, i));
    end
    
    if cji(1, i) ~= 0
        L = L + p_B0 * cji(1, i) * log2(1/cji(1, i));
    end
    if cji(2, i) ~= 0
        L = L + p_B1 * cji(2, i) * log2(1/cji(2, i));
    end
end
N
L
M = I - L

disp('b.')
disp('skipped.')

disp('c.')
new_cij = [1 0.1 0.8 1;
           0 0.9 0.2 0];
new_cji = [1/2.9 0.1/2.9 0.8/2.9 1/2.9;
           0 0.9/1.1 0.2/1.1 0];
disp(" ")
disp('i.')
new_cji(2, 2)
disp('ii.')
new_cji(2, 3)
disp('iii.')
new_cji(2, 4)

disp('de.')
pB = [2.9/4 1.1/4];
new_I = 4 * p_ai * log2(1/p_ai)
new_J = pB(1) * log2(1/pB(1)) + pB(2) * log2(1/pB(2))
new_N = 0;
for i = 1:4
    if new_cij(1, i) ~= 0
        new_N = new_N + p_ai * new_cij(1, i) * log2(1/new_cij(1, i));
    end
    if new_cij(2, i) ~= 0
        new_N = new_N + p_ai * new_cij(2, i) * log2(1/new_cij(2, i));
    end
end
new_N
new_L = new_I - new_J + new_N
new_M = I - new_L

disp('f.')
fprintf("N: %.2f -> %.2f \n", N, new_N)
fprintf("L: %.2f -> %.2f \n", L, new_L)
fprintf("M: %.2f -> %.2f \n", M, new_M)
disp('The defective gate made the process become noisy from noiseless state, added more loss, and reduced M.')