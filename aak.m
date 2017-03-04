b=imread('lena.bmp');
a=b(:,:,1); % first component
for i=1:size(a,1)
    for j=1:size(a,2)
        a(i,j)=255-a(i,j);
    end
end
    imwrite(a,'lena2.bmp');
    