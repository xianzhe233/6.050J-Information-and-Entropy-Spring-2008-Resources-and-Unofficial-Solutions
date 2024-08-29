disp('a.')
Pc = 0.3 * 0.3 + 2. * 0.3 * 0.7;
fprintf('i. %.2f\n', Pc)
Ps = 1 - ans1;
fprintf('ii. %.2f\n', Ps)
Pb = 0.5 * 0.5;
fprintf('iii. %.2f\n', Pb)
Pr = 1 - ans3;
fprintf('iv. %.2f\n', Pr)

disp('b.')
P_b_tell_c = Pc * Pb / Pc;
P_r_tell_c = Pc * Pr / Pc;
fprintf('i. %.2f\n', P_b_tell_c)
fprintf('ii. %.2f\n', P_r_tell_c)

disp('c.')
P_s_tell_r = Pr * Ps / Pr;
P_c_tell_r = Pr * Pc / Pr;
fprintf('i. %.2f\n', P_s_tell_r)
fprintf('ii. %.2f\n', P_c_tell_r)

disp('d.')
accuracy = 0.95;
false_rate = 0.004;
occur_rate = 0.001;
probability = occur_rate * accuracy / (occur_rate * accuracy + (1 - occur_rate) * false_rate); 
fprintf('%.4f\n', probability)