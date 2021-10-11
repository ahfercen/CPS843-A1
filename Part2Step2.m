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


[U,V] = meshgrid(0:64:590,0:64:393);
[X,Y] = tformfwd(T,U,V);
gray = 0.65 * [1,1,1];
for u = 0:64:590
    for v = 0:64:393
        theta = (0 : 32)' * (2 * pi / 32);
        uc = u + 20*cos(theta);
        vc = v + 20*sin(theta);
        [xc,yc] = tformfwd(T,uc,vc);
        figure(h1); line(uc,vc,'Color',gray);
        figure(h2); line(xc,yc,'Color',gray);
    end
end
figure(h1);
hold on;
line(U,V, 'Color',gray);
line(U',V','Color',gray);
figure(h2);
hold on;
line(X, Y, 'Color',gray);
line(X',Y','Color',gray);