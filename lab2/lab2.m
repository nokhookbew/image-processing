img = imread('Lawrence-Bluebells_Vignette.jpg');
imgd = double(img);
figure(1);
imshow(img);
[row, col, ~] = size(imgd);

white = ones(row, col);

    

for i = 1 :row
    for j = 1 :col
        white(i,j) = 1 - 0.7 * (distance(i,j, row, col)/distance(row,col,row,col));
    end
end
    
figure(2);
imshow(white);


res = uint8(imgd./white);
figure(3);
imshow(res);

function dist = distance(x,y,r,c)
    dist = sqrt((x-r/2).^2 + (y-c/2).^2);
end



