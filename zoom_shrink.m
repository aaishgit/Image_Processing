a=imread('zelda.bmp');
[r,c]=size(a);
a=double(a(:,:));
scale=2;
rn=uint16(scale*r)
cn=uint16(scale*c)
b=zeros(rn,cn);
    for i=1:rn
        for j=1:cn
            in=floor(i/scale);
            jn=floor(j/scale);
            if (in==0)
                in=1;
            end
            if(jn==0)
                jn=1;
            end
            b(i,j)=a(in,jn);
        end
    end
imwrite(uint8(b),'zelda_zoomed.bmp');
imshow(uint8(a))
figure, imshow(uint8(b))
