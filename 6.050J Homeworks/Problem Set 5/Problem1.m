disp('a.')
p_AE = 1 * (1 - 0.2)
p_A_a = 1
p_E_A = p_AE / p_A_a

disp('b.')
p_A_E = 0.25

disp('c.')
p_E = 0.05
p_AE = p_A_E * p_E

disp('d.')
p_A = p_E * p_A_E / p_E_A

disp('e.')
p_A_E

disp('f.')
p_E_R = 1 - 0.15
p_E_N = 0.02
p_N = (p_E - p_E_A * p_A - p_E_R + p_E_R * p_A) / (p_E_N - p_E_R)

disp('g.')
p_E

disp('h')
p_E_N