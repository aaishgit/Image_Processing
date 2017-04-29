a=imread('zelda.bmp');
padimg=zeros(size(a,1)+2,size(a,2)+2);
for i=1:size(a,1)
    for j=1:size(a,2)
        padimg(i+1,j+1)=a(i,j);
    end
end

final=zeros(size(a,1),size(a,2));
for i=1:size(a,1)
    for j=1:size(a,2)
        gx=padimg(i+2,j+1)-padimg(i+1,j+1);
        gy=padimg(i+1,j+2)-padimg(i+1,j+1);
        final(i,j)=sqrt(gx^2+gy^2);
        %sketch final(i,j)=255-final(i,j);
    end
end
subplot(1,2,1);title('Original');imshow(a);
subplot(1,2,2);title('After Gradient');imshow(uint8(final))
