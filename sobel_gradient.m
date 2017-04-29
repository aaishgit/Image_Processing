a=imread('zelda.bmp');
p=zeros(size(a,1)+2,size(a,2)+2);
for i=1:size(a,1)
    for j=1:size(a,2)
        p(i+1,j+1)=a(i,j);
    end
end

maskx=[-1 -2 -1;0 0 0;1 2 1]
masky=[-1 0 1;-2 0 2;-1 0 1]
%sum(maskx)-sum is columnwise first
%this gives 0 0 0
final=zeros(size(a,1),size(a,2));
for i=1:size(a,1)
    for j=1:size(a,2)
        ii=i+1;
        jj=j+1;
        mat=[p(ii-1,jj-1) p(ii-1,jj) p(ii-1,jj+1);
            p(ii,jj-1) p(ii,jj) p(ii,jj+1);
            p(ii+1,jj-1) p(ii+1,jj) p(ii+1,jj+1)];
        gx=abs(sum(sum(mat.*maskx)));
        gy=abs(sum(sum(mat.*masky)));
        final(i,j)=gx+gy;
    end
end
subplot(1,2,1);title('Original');imshow(a);
subplot(1,2,2);title('After Gradient');imshow(uint8(final))
