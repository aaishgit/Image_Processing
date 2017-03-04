a=imread('zelda.bmp');
[r,c]=size(a);
a_vert=zeros(r,c);
a_hori=zeros(r,c);

    for i=1:r
        for j=1:c
            a_vert(i,j)=a(i,c-j+1);
            a_hori(i,j)=a(r-i+1,j);
        end
    end
imwrite(uint8(a_vert),'zelda_mirror_vert.bmp');
imwrite(uint8(a_hori),'zelda_mirror_hori.bmp');
imshow(a)
figure, imshow(uint8(a_vert))
figure, imshow(uint8(a_hori))
