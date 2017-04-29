a=imread('zelda.bmp');
a=double(a);
%a=[1 2;3 4]
[r c]=size(a);
p=zeros(r+2,c+2);
for i=1:r
    for j=1:c
        p(i+1,j+1)=a(i,j);
    end
end
final=zeros(r,c);
q=0;
for i=1:r
    for j=1:c
        ii=i+1;
        jj=j+1;
        mat=[p(ii-1,jj-1) p(ii-1,jj) p(ii-1,jj+1);
            p(ii,jj-1) p(ii,jj) p(ii,jj+1);
            p(ii+1,jj-1) p(ii+1,jj) p(ii+1,jj+1)];
        mat1=sum(sum(mat.^(q+1)));
        
        mat2=sum(sum(mat.^q));
        
        b=double(mat1/mat2);
        final(i,j)=b;
    end
end
%final
imshow(uint8(final))
figure,imshow(uint8(a));
        