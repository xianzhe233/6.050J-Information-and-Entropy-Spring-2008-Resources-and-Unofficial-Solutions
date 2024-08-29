% p_E + p_F + p_U = 1
% 1.0p_E + 0.5p_F + 0.0p_U = 0.95
% -> p_F = 1.9 - 2p_E
% -> p_E = 0.9 + p_U
% -> p_U = p_E - 0.9
% 0.90 <= p_E <= 0.95
% 0.00 <= p_F <= 0.10
2% 0.00 <= p_U <= 0.05

syms p_E

disp('a.')
H = p_E * log2(1/p_E) + (1.9 - 2*p_E) * log2(1/(1.9 - 2*p_E)) + (p_E - 0.9) * log2(1/(p_E - 0.9));
dH = diff(H, p_E);
p = double(solve(dH == 0, p_E))
Hm = double(subs(H, p_E, p))

H_numeric = matlabFunction(H, 'Vars', p_E);

p_E_rng = linspace(0.90, 0.95, 10000);
H_v = arrayfun(H_numeric, p_E_rng);

figure;
plot(p_E_rng, H_v, 'LineWidth', 2);
xlabel('p(E)');
ylabel('H');
title('Function H vs p(E)');
grid on;

disp('b.')
% p_E = 0.95, p_F = 0.00, p_U = 0.05
H_b = 0.95 * log2(1/0.95) + 0.05 * log2(1/0.05)

disp('c.')
% p_E = 0.90, p_F = 0.10, p_U = 0.00
H_c1 = 0.90 * log2(1/0.90) + 0.10 * log2(1/0.10)
% p_E = 0.94, p_F = 0.02, p_U = 0.04
H_c2 = double(subs(H, p_E, 0.94))

disp('d.')
fprintf("48/47 * 0.95 = %.2f%% < 100.00%%\n", 48/47 * 95);
disp('p(E1) = 0, H1 = 0 bit.')

disp('e.')
fprintf("(48 * 0.95 - 1) / 47 = %.2f%% > 0.00%%\n", (48 * 0.95 - 1) / 47 * 100);
disp('p(Ei) = 1, H = 0 bit.')
