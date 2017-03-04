str=input('Enter name of the file you want to rotate','s');
a=imread(strcat(str,'.bmp'));
b=zeros(size(a));

%rotate 90 degree
for i=1:size(a,2)
    for j=1:size(a,1)
        b(i,j)=a(size(a,2)-j+1,i);
    end
end
imwrite(uint8(b),strcat(str,'_comp.bmp'));
imshow(a)
figure,imshow(uint8(b))