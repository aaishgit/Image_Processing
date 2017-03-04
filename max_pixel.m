a=imread('a.png');
[row,col,depth]=size(a);
max=a(1,1);
min=a(1,1);
sum=0;
for k=1:depth
for i=1:row
    for j=1:col
        if(a(i,j)>max)
            max=a(i,j);
        end
        if(a(i,j)<min)
            min=a(i,j);
        end
        sum=sum+a(i,j);
    end
end
end
max
min
avg=sum/(row*col)

    