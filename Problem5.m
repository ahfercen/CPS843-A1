A = [1,2,4,7,3,2,4,7,3,1,5,6,2,1,1,4,7,1,1,1];
figure, histogram(A);
B = histeq(A,8);
figure, histogram(B);