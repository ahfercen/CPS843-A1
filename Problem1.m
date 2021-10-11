%Load Image
I = imread('Image1.jpeg');
dv = im2double(im2gray(I));

%Log Transformation
O1=1*log(1+dv);
O2=1.5*log(1+dv);
O3=2*log(1+dv);
%Inverse Log Transformation
IL1 = power(exp(dv),(1/1)) - 1;
IL2 = power(exp(dv),(1/1.5)) - 1;
IL3 = power(exp(dv),(1/2)) - 1;
%power-law transformation of Gamma 0.3
PL1 = 1*power(dv,0.3);
PL2 = 1.5*power(dv,0.3);
PL3 = 2*power(dv,0.3);
%power-law transformation of Gamma 3
PL4 = 1*power(dv,3);
PL5 = 1.5*power(dv,3);
PL6 = 2*power(dv,3);
%Show Images
subplot(4,4,1), imshow(im2gray(I)); title('Original Image');
subplot(4,4,2), imshow(O1); title('Factor 1 log');
subplot(4,4,3), imshow(O2); title('Factor 1.5 log');
subplot(4,4,4), imshow(O3); title('Factor 2 log');
subplot(4,4,5), imshow(im2gray(I)); title('Original Image');
subplot(4,4,6), imshow(IL1); title('Factor 1 inverse log');
subplot(4,4,7), imshow(IL2); title('Factor 1.5 inverse log');
subplot(4,4,8), imshow(IL3); title('Factor 2 inverse log');
subplot(4,4,9), imshow(im2gray(I)); title('Original Image');
subplot(4,4,10), imshow(PL1); title('Factor 1 power-law 0.3');
subplot(4,4,11), imshow(PL2); title('Factor 1.5 power-law 0.3');
subplot(4,4,12), imshow(PL3); title('Factor 2 power-law 0.3');
subplot(4,4,13), imshow(im2gray(I)); title('Original Image');
subplot(4,4,14), imshow(PL4); title('Factor 1 power-law 3');
subplot(4,4,15), imshow(PL5); title('Factor 1.5 power-law 3');
subplot(4,4,16), imshow(PL6); title('Factor 2 power-law 3');