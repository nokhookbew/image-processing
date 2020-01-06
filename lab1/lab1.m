image = imread('test_image.tif');
% r = image(:,:,1);
% figure(1)
% imshow(r);
% g = image(:,:,2);
% figure(2)
% imshow(g);
% b = image(:,:,3);
% figure(3)
% imshow(b);


res1 = bitshift(image, 3);
figure(4)
imshow(res1);

res2 = bitshift(image, 7);
figure(5)
imshow(res2)