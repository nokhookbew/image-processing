% mri
mri_img = imread('mri_txt.tif');
figure(1);
imshow(mri_img);

mri_img_adj = imadjust(mri_img, stretchlim(mri_img), []); 
figure(2);
imshow(mri_img_adj);

mri_img_his = histeq(mri_img);
figure(3);
imshow(mri_img_his);

% mri_img_adpHis = adapthisteq(mri_img,'ClipLimit', 0.3);
% figure(4);
% imshow(mri_img_adpHis);

% monet
monet_img = imread('monet_gray_xlc.jpg');
figure(5);
imshow(monet_img);

monet_img_adj = imadjust(monet_img, stretchlim(monet_img), []);
figure(6);
imshow(monet_img_adj);

monet_img_his = histeq(monet_img);
figure(7);
imshow(monet_img_his);

% monet_img_adpHis = adapthisteq(monet_img, 'Cliplimit', 0.19);
% figure(8);
% imshow(monet_img_adpHis);

for i = 1 :5
    n = 0.05;
    monet_img_adpHis = adapthisteq(monet_img, 'Cliplimit', 0.19 + n);
    figure(8 + i);
    imshow(monet_img_adpHis);
end
