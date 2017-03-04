b=[1 2 3 4 5 6 7 8;2 3 4 5 6 7 8 9;3 4 5 6 7 8 9 10;10 9 8 7 6 5 4 3;9 8 7 6 5 4 3 2;8 7 6 5 4 3 2 1;7 6 5 4 3 2 1 0;0 1 2 3 4 5 6 7];
[brow,bcol]=size(b)
c=zeros(brow/2,bcol/2);
[crow,ccol]=size(c);
x=1;
y=1;
for i=1:brow
    for j=1:bcol
        if(mod(j,2)~=0)
            if(mod(i,2)~=0)
                c(x,y)=b(i,j);
                y=y+1;
                if(y==ccol+1)
                    y=1;
                    x=x+1;
                end
            end
        end
    end
end
c