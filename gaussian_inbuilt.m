I=imread('zelda.bmp');
Iblur1 = imgaussfilt(I,1.5);
imshow(I);
figure,imshow(uint8(Iblur1));