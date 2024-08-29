load imdemos circuit4
flower = double(circuit4);
colormap('gray');
imshow(flower, [0 255])


B = blkproc(flower, [4 4], 'dct2');
B(abs(B) < 1) = 0;

C = blkproc(flower, [4 4], 'idct2');
C = round(C);

mse = mean2((flower - C).^2)
figure;
imshow(C, [0 255])