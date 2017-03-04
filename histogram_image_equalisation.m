level=256;
%a=zeros(1,level);
img=imread('zelda.bmp');
img_eq=zeros(size(img,1),size(img,2));
a=zeros(1,level);
for i=1:size(img,1)
    for j=1:size(img,2)
        a(1,img(i,j)+1)=a(1,img(i,j)+1)+1;
    end
end
b=zeros(1,level);
r=zeros(1,level);
for i=1:level
    %a(1,i)=input('Enter next element');
    r(1,i)=i-1;
end
sum_a=sum(a(:));
x=0;
for i=1:level
    x=x+a(1,i);
    b(1,i)=x/sum_a*(level-1);
end
b=uint8(b);
for i=0:level-1
    for j=1:size(img,1)
        for k=1:size(img,2)
            if(img(j,k)==i)
                img_eq(j,k)=b(i+1);
            end
        end
    end
end
newa=zeros(1,level);
for i=1:level
    newa(1,b(1,i)+1)=newa(1,b(1,i)+1)+a(1,i);
end
%newa;
% hista=zeros(level,2);
% for i=1:level
%     hista(i,1)=newa(1,i);
%     hista(i,2)=r(1,i);
% end
imwrite(uint8(img_eq),'zelda_eq.bmp');
subplot(3,2,1);bar(r,a);title('Normal Image');
subplot(3,2,2);bar(r,newa);title('Equalised Image');
subplot(3,2,3);imhist(img)
subplot(3,2,4);imhist(uint8(img_eq))
subplot(3,2,5);imshow(img);
subplot(3,2,6);imshow(uint8(img_eq));
%figure,bar(r,newa);



