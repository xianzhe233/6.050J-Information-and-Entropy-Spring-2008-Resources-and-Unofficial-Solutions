disp('3.1')
disp("Caltech scheme: " + boolean(26 + 10 + 32 <= pow2(6)))
disp("MIT scheme: " + boolean(26 + 10 + 28 <= pow2(6)))

disp('3.2')
disp("Caltech scheme modified(9-bit-code use 11 as beginning and left 7-bit for ascii): " + boolean(26 + 10 + 32 <= pow2(7)))

disp('3.3')
lower_case = 200;
spaces = 50;
upper_case = 20;
common_punctuation = 5;
uncommon_punctuation = 20;
ETX = 1;
ans_c = 5 * lower_case + 5 * spaces + 9 * upper_case + 9 * common_punctuation + 9 * uncommon_punctuation + 5 * ETX;
ans_m = 6 * lower_case + 6 * spaces + 7 * upper_case + 6 * common_punctuation + 7 * uncommon_punctuation + 6 * ETX;
disp("Caltech scheme: " + ans_c)
disp("MIT scheme: " + ans_m)

disp('3.4')
disp("use 8-bit-code with 11 in the beginning for control characters")

disp('3.5')
