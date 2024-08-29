disp('a.')
disp('1.  B + C + F + T - 1 = 0')
disp('2.  1000B + 600C + 400F + 200T - 380 = 0')

disp('b.')
g = [1000 600 400 200];
syms alpha;
syms beta;
syms idx;
function p = p(alpha, beta, idx)
    g = [1000 600 400 200];
    p = power(2, -alpha) * power(2, -beta * g(idx));
end
function S = S(alpha, beta)
    G = 380;
    S = alpha + beta * G;
end
disp('p function and S function.')

disp('c.')
function alp = calc_alpha(beta)
    g = [1000 600 400 200];
    sum = 0;
    for i = 1:4
        sum = sum + 2 ^ (-beta * g(i));
    end
    alp = log2(sum);
end
disp('alpha function.')

disp('defg.')
Beta = 0.0036
Alpha = calc_alpha(Beta)

disp('hijk.')
name = ['B', 'C', 'F', 'T'];
psum = 0;
csum = 0;
for i = 1:4
    fprintf("p(%s) = %.4f\n", name(i), p(Alpha, Beta, i));
    psum = psum + p(Alpha, Beta, i);
    csum = csum + g(i) * p(Alpha, Beta, i);
end
fprintf("sum of p is %f\n", psum);
fprintf("average calories is %f\n", csum);
fprintf("S = %.4f\n", S(Alpha, Beta));

disp('l.')
cost_sum = 0;
cost = [1 2 3 8];
for i = 1:4
    cost_sum = cost_sum + p(Alpha, Beta, i) * cost(i);
end
fprintf("Average cost is %.2f\n", cost_sum);

disp('m.')
disp('T - 1')
disp('F - 10')
disp('C - 110')
disp('B - 011')
aver_codes = 1.7653;
fprintf("average bit per symbol is %.2f", aver_codes);