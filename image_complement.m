str=input('Enter name of the file you want to complement','s');
a=imread(strcat(str,'.bmp'));
b=zeros(size(a));
for i=1:size(a,1)
    for j=1:size(a,2)
        b(i,j)=255-a(i,j);
    end
end
imwrite(uint8(b),strcat(str,'_comp.bmp'));
imshow(a)
figure,imshow(uint8(b))