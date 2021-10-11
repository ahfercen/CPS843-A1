a = 0.45;
T=maketform('affine', [1 0 0; a 1 0; 0 0 1]);
A = imread('Image1.jpeg');
I = imcrop(A,[0 0 576 364 ]);
orange = [255 177 0]';
R = makeresampler({'cubic','nearest'},'fill');

Bf = imtransform(A,T,R,'XData',[-49 850],'YData', [-49 500],'FillValues',orange);
figure, imshow(Bf);
title('Pad Method = fill');

R = makeresampler({'cubic','nearest'},'replicate');
Br = imtransform(A,T,R,'XData',[-49 850],'YData', [-49 500]);
figure, imshow(Br);
title('Pad Method = replicate');

R = makeresampler({'cubic','nearest'}, 'bound');
Bb = imtransform(A,T,R,'XData',[-49 850],'YData',[-49 500],'FillValues',orange);
figure, imshow(Bb);
title('Pad Method = ''bound''');