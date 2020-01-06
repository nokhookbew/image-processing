image = imread('test_image.tif');
figure(6);
imshow(image);
r = image(:,:,1);
figure(1);
imshow(r);
g = image(:,:,2);
figure(2);
imshow(g);
b = image(:,:,3);
figure(3);
imshow(b);


res1 = bitsll(image,3);
figure(4);
imshow(res);

res2 = bitsll(image, 7);
figure(5);
imshow(res2);