I = imread('Image1.jpeg');
A = im2gray(I);
%Extract bit-planes
bit1 = bitget(A,1);
bit2 = bitget(A,2);
bit3 = bitget(A,3);
bit4 = bitget(A,4);
bit5 = bitget(A,5);
bit6 = bitget(A,6);
bit7 = bitget(A,7);
bit8 = bitget(A,8);
%display individual bit-planes
subplot(2,4,1), imshow(bit1,[]),title('bit 1');
subplot(2,4,2), imshow(bit2,[]),title('bit 2');
subplot(2,4,3), imshow(bit3,[]),title('bit 3');
subplot(2,4,4), imshow(bit4,[]),title('bit 4');
subplot(2,4,5), imshow(bit5,[]),title('bit 5');
subplot(2,4,6), imshow(bit6,[]),title('bit 6');
subplot(2,4,7), imshow(bit7,[]),title('bit 7');
subplot(2,4,8), imshow(bit8,[]),title('bit 8');
%merge and display specific bit-planes
high2 = uint8(bit8*128 + bit7*64);
high4 = uint8(bit8*128+bit7*64+bit6*32+bit5*16);
figure, imshow(high2), title("2 highest bits");
figure, imshow(high4), title("4 highest bits");