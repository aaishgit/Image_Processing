a=imread('parrot.jpg');
[row,col,depth]=size(a);
b=zeros(col,row,depth);
for k=1:depth
    for i=1:col
        for j=1:row
            b(i,j,k)=a(j,i,k);
        end
    end
end
imwrite(b,'parrot_trans.jpg');
r=a(:,:,1);
g=a(:,:,2);
bl=a(:,:,3);
imwrite(uint8(r),'parrot_red.jpg');
imwrite(uint8(g),'parrot_green.jpg');
imwrite(uint8(bl),'parrot_blue.jpg');
imshow(a)
figure, imshow(b)
figure, imshow(r)
figure, imshow(g)
figure, imshow(bl)