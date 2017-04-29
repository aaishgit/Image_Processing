A = imread('zelda.bmp');
A = double(A);
[m,n] = size(A);
res = zeros(m,n);
au = 1/sqrt(m);
av = 1/sqrt(n);
rt2 = sqrt(2);
for u=0:m-1
    for v=0:n-1
        temp=0;
        for x=0:m-1
            for y=0:n-1
                thetax = (2*x+1)*pi*u/(2*m);
                thetay = (2*y+1)*pi*v/(2*n);
                temp = temp + A(x+1,y+1)*cos(thetax)*cos(thetay);
            end
        end
        temp = temp*au*av;
                if(u~=0)
                    temp = temp*rt2;
                end
                if(v~=0)
                    temp = temp*rt2;
                end
        res(u+1,v+1)=temp;
    end
end
disp('calculated');
disp(res);
disp('actual');
disp(dct2(A));