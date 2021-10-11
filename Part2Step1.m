%Part 1
a = 0.45;
T=maketform('affine', [1 0 0; a 1 0; 0 0 1]);
A = imread('Image1.jpeg');
I = imcrop(A,[0 0 576 364 ]);
h1 = figure; imshow(I); title("Original Image");
orange = [255 177 0]';
R = makeresampler({'cubic','nearest'},'fill');
B = imtransform(I,T,R,'FillValues',orange);
h2 = figure; imshow(B);
title('Sheared Image');
