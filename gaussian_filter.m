init=imread('zelda.bmp');

proc=zeros(size(init,1)+2,size(init,2)+2);
final=zeros(size(init,1),size(init,2));
filter=zeros(3,3);

for i=2:size(init,1)+1
    for j=2:size(init,2)+1
        proc(i,j)=init(i-1,j-1);
    end
end
sig=0.7;

for i=1:3
    for j=1:3
        filter(i,j)=exp(-((i*i)+(j*j))/2*sig*sig)/(2*pi*sig*sig)^(1/2);
    end
end
proc=double(proc);
for i=2:size(proc,1)-1
    for j=2:size(proc,2)-1
        final(i-1,j-1)=proc(i-1,j-1)*filter(1,1)+proc(i-1,j)*filter(1,2)+proc(i-1,j+1)*filter(1,3)+proc(i,j-1)*filter(2,1)+proc(i,j)*filter(2,2)+proc(i,j+1)*filter(2,3)+proc(i+1,j-1)*filter(3,1)+proc(i+1,j)*filter(3,2)+proc(i+1,j+1)*filter(3,3);
    end
end
imshow(init)
figure,imshow(uint8(final));

