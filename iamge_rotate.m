str=input('Enter name of the file you want to rotate','s');
a=imread(strcat(str,'.bmp'));
b=zeros(size(a,2),size(a,1));
l=zeros(size(a,2),size(a,1));
%rotate 90 degree
for i=1:size(a,2)
    for j=1:size(a,1)
        b(i,j)=a(size(a,2)-j+1,i);
    end
end
imwrite(uint8(b),strcat(str,'_rotate_90.bmp'));

%rotate 180 degree
c=zeros(size(b,2),size(b,1));
for i=1:size(b,2)
    for j=1:size(b,1)
        c(i,j)=b(size(b,2)-j+1,i);
    end
end
imwrite(uint8(c),strcat(str,'_rotate_180.bmp'));
imshow(a)
figure,imshow(uint8(b))
figure,imshow(uint8(c))