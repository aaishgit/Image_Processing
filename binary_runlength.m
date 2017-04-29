%a=imread('zelda.bmp');
a=[1 1 0;1 0 1;0 0 0];
[arow acol]=size(a);
% d=sum(a(:));
% e=d/(arow*acol);
% newa=zeros(arow,acol);
% for i=1:arow
%     for j=1:acol
%         if(a(i,j)>e)
%             newa(i,j)=1;
%         end
%     end
% end
comp=[];
for i=1:arow
    ele=0;
    count=0;
    for j=1:acol
        if(a(i,j)==ele)
            count=count+1;
        else
            comp=[comp count];
            ele=a(i,j);
            count=1;
        end
    end
     comp=[comp count];
end
comp

    