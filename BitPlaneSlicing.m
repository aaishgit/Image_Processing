orig=imread('zelda.bmp');
hid=imread('zelda.bmp');
[hidr hidc]=size(hid);
hidnew=zeros(hidr,hidc);
d=sum(hid(:));
e=d/(hidr*hidc);
for i=1:hidr
    for j=1:hidc
        if(hid(i,j)>e)
            hidnew(i,j)=1;
        end
    end
end
lev=8
planes=zeros(size(orig,1),size(orig,2),lev);
for i=1:lev
    poww=2^(i-1);
    for j=1:size(orig,1)
        for k=1:size(orig,2)
            %if(poww==1)
             %   planes(j,k,i)=hidnew(j,k);
            %else
                temp=bitand(poww,orig(j,k));
                if(temp==poww)
                    planes(j,k,i)=1;
                else
                    planes(j,k,i)=0;
                end
            %end
        end
    end
end
for i=1:8
    subplot(2,4,i),imshow(planes(:,:,i));
end
                
    