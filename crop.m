a=imread('a.png');
row=input('Enter the new row size');
col=input('Enter the new column size');
b=zeros(row,col,depth);
for k=1:depth
for i=1:row
    for j=1:col
        b(i,j,k)=a(i,j,k);
    end
end
end
imwrite(uint8(b),'a_crop.png');
    