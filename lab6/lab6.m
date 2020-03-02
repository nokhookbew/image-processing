load('jupiterbwnoisy.mat');
fftR = fft2(imNoisy);
figure(1); imshow(imNoisy,[]);
figure(2); imshow(log(abs(fftshift(fftR))),[]);

A = 1;
N = max(size(imNoisy));
[H, W, ~] = size(imNoisy);

 for y=1:W
     for x=1:W
         u = 40;
         v = 0;
         vertical(y,x) = 128 * (A*cos((2*pi*(u*x + v*y))/N)+A*sin((2*pi*(u*x + v*y))/N)+1);
     end
 end
fftA = fft2(vertical(1:H,1:W));
figure(3); imshow(log(abs(fftshift(fftA))),[]);
 
 for y=1:W
     for x=1:W
         u = 0;
         v = 40;
         horizon(y,x) = 128 * (A*cos((2*pi*(u*x + v*y))/N)+A*sin((2*pi*(u*x + v*y))/N)+1);
     end
 end
fftB = fft2(horizon(1:H,1:W));
figure(4); imshow(log(abs(fftshift(fftB))),[]);

result = ifft2(abs(fftR-fftA-fftB).*exp(1i*angle(fftR-fftA-fftB)));

figure(6); imshow(uint8(result)); 
