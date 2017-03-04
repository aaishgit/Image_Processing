a=imread('zelda.bmp');
[r,c]=size(a);
b=zeros(c,r);

    for i=1:c
        for j=1:r
            b(i,j)=a(j,i);
        end
    end
imwrite(uint8(b),'zelda_transpose.bmp');
imshow(a)
figure, imshow(uint8(b))

