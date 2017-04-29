a=imread('moon.tif');
p=zeros(size(a,1)+2,size(a,2)+2);
for i=1:size(a,1)
    for j=1:size(a,2)
        p(i+1,j+1)=a(i,j);
      
    end
end

lapmask=[-1 -1 -1;-1 8 -1;-1 -1 -1];
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
        final(i,j)=sum(sum(lapmask.*mat));
    end
end
%H = imfilter(a,lapmask);
subplot(1,2,1);imshow(a);title('original');
%imshow(uint8(final));title('myout');
subplot(1,2,2);imshow(uint8(final));title('output');
