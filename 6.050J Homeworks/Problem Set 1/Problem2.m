clear
A = [1 1 0 0];
B = [1 0 1 0];

for i = 1:4
    AND(1,i) = A(i) & B(i);
    NAND(1,i) = ~(~(A(i) & B(i)) & 1);
end

disp(AND)
disp(NAND)

for i = 1:4
    OR(1,i) = A(i) | B(i);
    NAND(1,i) = ~(~(A(i) & 1) & ~(B(i) & 1));
end

disp(OR)
disp(NAND)