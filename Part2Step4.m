a = 0.45;
Thalf = maketform('affine',[1 0; a 1; 0 0]/2);
R = makeresampler({'cubic','nearest'},'circular');
A = imread('Image1.jpeg');
I = imcrop(A,[0 0 576 364 ]);
orange = [255 177 0]';
Bc = imtransform(I,Thalf,R,'XData',[-49 850],'YData',[-49 500],'FillValues',orange);
figure, imshow(Bc);
title('Pad Method = ''circular''');

R = makeresampler({'cubic','nearest'},'symmetric');
Bs = imtransform(A,Thalf,R,'XData',[-49 850],'YData',[-49 500],'FillValues',orange);
figure, imshow(Bs);
title('Pad Method = ''symmetric''');

