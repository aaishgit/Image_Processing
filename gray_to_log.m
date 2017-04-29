a=imread('zelda.bmp');
[arow,acol]= size(a);
b=zeros(arow,acol);
for i=1:arow
    for j=1:acol
        if(a(i,j)>127)
            b(i,j)=1;
        end
    end
end
imwrite(b,'zelda_log.bmp');
c=zeros(arow,acol);
d=sum(a(:));
e=d/(arow*acol);
e
for i=1:arow
    for j=1:acol
        if(a(i,j)>e)
            c(i,j)=1;
        end
    end
end
imwrite(c,'zelda_log_mean.bmp');
imshow(b)
figure, imshow(a)
figure, imshow(c)