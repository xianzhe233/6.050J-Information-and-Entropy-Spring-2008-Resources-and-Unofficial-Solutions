%      weigh      sugar      other
%  T    2.1       0.85       0.15
%  M    0.9       0.45       0.55
%  K    1.5       0.25       0.75
% TOTAL: 2300 grams

disp('a.')
% 2.1T + 0.9M + 1.5H = 2300
name = ['T' 'M' 'K'];
w = [2.1 0.9 1.5];
sugar = [0.85 0.45 0.25];
other = [0.15 0.55 0.75];

for i = 1:3
    fprintf("%s: 0 ~ %d\n", name(i), floor(2300 / w(i)));
end

disp('b.')
% T + M + K = 1100
% p(T) = T / 1100, p(M) = M / 1100, p(K) = K / 1100
% T = 1300/1.2 - M, K = 1100 - 1300/1.2 - 2M
syms M;
function H = H(M)
    T = 1300/1.2 - M;
    K = 1100 - 1300/1.2 - 2*M;

    p_T = T / 1100;
    p_M = M / 1100;
    p_K = K / 1100;

    if p_T == 0
        log_T = 0;
    else
        log_T = log2(1/p_T);
    end

    if p_M == 0
        log_M = 0;
    else
        log_M = log2(1/p_M);
    end

    if p_K == 0
        log_K = 0;
    else
        log_K = log2(1/p_K);
    end

    H = (p_T * log_T) + (p_M * log_M) + (p_K * log_K);
end

% 0 <= M <= 8
disp("M        H")
for i = 0:8
    fprintf("%d\t\t%.4f\n", i, double(H(i)));
end
disp('When M is 0, H gets its maximum 0.1133.')
M = 0;
T = round(1300/1.2 - M);
K = round(1100 - 1300/1.2 - 2*M);
dist = [M T K];
fprintf("T = %d, K = %d\n", T, K);

disp('c.')
sugar_exp = 0;
for i = 1:3
    sugar_exp = sugar_exp + dist(i) / 1100 * sugar(i);
end
fprintf("sugar: %.4f\n", sugar_exp);

disp('d.')
disp('T = 1300/1.2 - M')
disp('1300/1.2 - 8 <= T <= 1300/1.2 - 0')
disp('So, T cannot be 600.')