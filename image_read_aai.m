
a=imread('zelda.bmp');
for i=1:size(a,1)
    for j=1:size(a,2)
        a(i,j)=255-a(i,j);
    end
end
imwrite(a,'zelda1.bmp');
        