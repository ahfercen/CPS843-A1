%Original Image
I = imread('Image1.jpeg');
dv = im2double(im2gray(I));
I = im2gray(I);
%Power-Law transformed images
PL1 = 1*power(dv,0.3);
PL2 = 1*power(dv,3);

figure;
subplot (1,3,1), imshow(I), title('Original');
subplot (1,3,2), imshow(PL1), title('Gamma 0.3');
subplot (1,3,3), imshow(PL2), title('Gamma 3');

figure;
h1 = histogram(I), title("Original Histogram");
figure;
h2 = histogram(PL1), title("Gamma 0.3 Histogram");
figure;
h3 = histogram(PL2), title("Gamme 3 Histogram");

figure;
h1eq = histeq(I);
h2eq = histeq(PL1);
h3eq = histeq(PL2);
subplot (2,3,1), imshow(I), title('Original');
subplot (2,3,2), imshow(PL1), title('Gamma 0.3');
subplot (2,3,3), imshow(PL2), title('Gamma 3');
subplot (2,3,4), imshow(h1eq), title('Original equalized');
subplot (2,3,5), imshow(h2eq), title('Gamma 0.3 equalized');
subplot (2,3,6), imshow(h3eq), title('Gamma 3 equalized');
