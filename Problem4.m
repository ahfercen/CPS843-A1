
figure;
I = imread('Image1.jpeg');
histogram(I), title("original");
figure;
R = imread('image2.jpeg');
histogram(R), title("Reference");
figure;
J = imhistmatch(I,R);
histogram(J), title("matching");