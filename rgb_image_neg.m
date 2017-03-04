a=imread('parrot.jpg');
%a=b(:,:,3)
[r,c,col]=size(a)
for i=1:r
    for j=1:c
        for k=1:col
            a(i,j,k)=255-a(i,j,k);
        end
    end
end
imwrite(a,'parrot_neg.jpg');
