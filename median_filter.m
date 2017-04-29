a=imread('zelda.bmp');
b=zeros(size(a,1)+2,size(a,2)+2);
c=zeros(size(a,1),size(a,2));
for i=2:size(a,1)+1
    for j=2:size(a,2)+1
        b(i,j)=a(i-1,j-1);
    end
end
for i=2:size(a,1)+1
    for j=2:size(a,2)+1
        d=[b(i,j),b(i-1,j),b(i,j-1),b(i-1,j-1),b(i+1,j),b(i,j+1),b(i+1,j+1),b(i-1,j+1),b(i+1,j-1)];
        sort(d);
        c(i-1,j-1)=d(5);
    end
end
subplot(1,2,1);imshow(a);title('Normal Image');
subplot(1,2,2);imshow(uint8(c));title('Smoothened Image');
        
        
        
        
            