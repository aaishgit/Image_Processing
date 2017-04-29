a=imread('zelda.bmp');
b=zeros(size(a,1)+2,size(a,2)+2);
c=zeros(size(a,1),size(a,2));
%d=imnoise(a,'salt & pepper',0.02);
d=imnoise(a,'gaussian');
for i=2:size(d,1)+1
    for j=2:size(d,2)+1
        b(i,j)=d(i-1,j-1);
    end
end
for i=2:size(d,1)+1
    for j=2:size(d,2)+1
        c(i-1,j-1)=b(i,j)+b(i-1,j)+b(i,j-1)+b(i-1,j-1)+b(i+1,j)+b(i,j+1)+b(i+1,j+1)+b(i-1,j+1)+b(i+1,j-1);
        c(i-1,j-1)=c(i-1,j-1)/9;
    end
end
subplot(1,3,1);imshow(a);title('Normal Image');
subplot(1,3,2);imshow(d);title('Noise Image');
subplot(1,3,3);imshow(uint8(c));title('Smoothened Image');


        
        
        
        
            