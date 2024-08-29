G = [1 0 0 0 1 0 1;
     0 1 0 0 1 1 0;
     0 0 1 0 1 1 1;
     0 0 0 1 0 1 1];

H = [1 1 1 0 1 0 0;
     0 1 1 1 0 1 0;
     1 0 1 1 0 0 1];

disp('a.')
PATTERN = zeros(16, 4);
idx = 1;
for i = 0:1
    for j = 0:1
        for k = 0:1
            for l = 0:1
                PATTERN(idx, :) = [i j k l];
                idx = idx + 1;
            end
        end
    end
end
disp(PATTERN);

disp('b.')
CODEBOOK = zeros(16, 7);
for i = 1:16
    CODEBOOK(i, :) = mod(PATTERN(i, :) * G, 2);
end
disp(CODEBOOK);

disp('c.The lowest hamming distance of this type of code is 3, so 1 error can be corrected and 2 errors can be detected.')

disp('de.')
choices = [2 5 6];

for i = choices
    disp('           PATTERN                             CODE                       EXAMINE')
    disp([PATTERN(i, :) CODEBOOK(i, :) mod(CODEBOOK(i, :) * H', 2)])
end

for i = 1:7
    CODEBOOK(1, i) = ~CODEBOOK(1, i);
    fprintf('pos %d:  %d %d %d\n', i, mod(CODEBOOK(1, :)*H', 2))
    CODEBOOK(1, i) = ~CODEBOOK(1, i);
end