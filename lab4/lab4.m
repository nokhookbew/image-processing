img = imread('honeypot.jpg');
img_d = double(img);
figure(1);
imshow(img);

h = fspecial('average', 40);

avg = imfilter(img_d, h);
figure(99);
imshow(uint8(avg));

h_x = fspecial('sobel');

h_y = h_x';

f_img_x = imfilter(img_d, h_x);
figure(2);
imshow(f_img_x);

f_img_y = imfilter(img_d, h_y);
figure(3);
imshow(f_img_y);

% [row, col, ~] = size(imgd);

% new_img = ones(row, col);

% for i = 1 :row
%    for j = 1 :col
%        new_img(i,j) = sqrt((f_img_x(i, j).^2) + (f_img_y(i, j).^2));
%     end
% end
f_img = sqrt((f_img_x.^2) + (f_img_y.^2));

f_img_u = uint8(f_img);
figure(4);
imshow(f_img_u);

avg_u = uint8(avg);

result = avg_u-f_img_u;
figure(5);
imshow(result);



