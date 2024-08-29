A = [1 1 0 0];
B = [1 0 1 0];
C = zeros(4);
D = zeros(4);

for i = 1:4
    C(i) = ~(A(i)&B(i)) | (~B(i));
    D(i) = ~(A(i)&B(i));
end

disp(C)
disp(D)