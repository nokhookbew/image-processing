mri_img = imread('mri_txt.tif');
figure(1);
subplot(1,2,1);
imshow(mri_img);
subplot(1,2,2);
imhist(mri_img,64);

mri_img_adj = imadjust(mri_img, stretchlim(mri_img), []); 
figure(2);
subplot(1,2,1);
imshow(mri_img_adj);
subplot(1,2,2);
imhist(mri_img_adj,64);

mri_img_his = histeq(mri_img);
figure(3);
subplot(1,2,1);
imshow(mri_img_his);
subplot(1,2,2);
imhist(mri_img_his,64);