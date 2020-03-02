%Nebula

img_nebula = imread('NGC1499-766-L.jpg');


h_nebula = fspecial('average', 3);
avg_nebula = imfilter(img_nebula, h_nebula);

result_nebula = img_nebula + (img_nebula - avg_nebula)*5;

figure(99);
imshowpair(img_nebula, result_nebula, 'montage');
title('input                                   output');


%Martian

img_martian = imread('PIA04521_Martian_Moon.jpg');

h_martian_gaussian = fspecial('gaussian', 3, 0.7);
gaussian_martian = imfilter(img_martian, h_martian_gaussian);
h_martian_avg = fspecial('average', 25);
avg_martian = imfilter(gaussian_martian, h_martian_avg);


result_martian = gaussian_martian + (gaussian_martian - avg_martian)*2;

figure(77);
imshowpair(img_martian, result_martian, 'montage');
title('input                                   output');
