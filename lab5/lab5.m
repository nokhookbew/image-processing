%Lion
imgLion = imread('lion-cub.jpg');
imgCurv = imread('curve_brighter.jpg');

fftLion = fft2(imgLion);
fftCurv = fft2(imgCurv);

resultLion = ifft2(fftran(fftCurv, fftLion));

figure(1);
imshow(uint8(resultLion));

%Forest
imgForest = imread('forest.jpg');
imgShining = imread('shining.jpg');

fftForest = fft2(imgForest);
fftShining = fft2(imgShining);

resultForest = ifft2(fftran(fftShining, fftForest));

figure(2);
imshow(imgForest+imgShining);
% imshow(uint8(resultForest));


%Tree
imgTree = imread('trees.jpg');
imgSmoke = imread('smoke.jpg');

fftTree = fft2(imgTree);
fftSmoke = fft2(imgSmoke);
newTree = fft2(imgTree + imgSmoke);
resultTree = ifft2(fftran(fftTree, newTree));

figure(3);
% imshow(imgTree + imgSmoke);
imshow(uint8(resultTree));


function fft = fftran (x,y)
    fft = (abs(x)).*exp(1i*angle(y));
end
    