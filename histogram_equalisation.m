level=8;
%a=zeros(1,level);
a=[790 1023 850 656 329 245 122 81]
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
    b(1,i)=x/sum_a*(level-1)
end
b=uint8(b)
newa=zeros(1,level);
for i=1:level
    newa(1,b(1,i)+1)=newa(1,b(1,i)+1)+a(1,i)
end
newa;
bar(r,a)
figure,bar(r,newa)


