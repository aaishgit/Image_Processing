%a=imread('zelda.bmp');
a=[1 2;3 4];
[m n]=size(a);
a=double(a);
udenom=sqrt(1/m);
vdenom=sqrt(1/n);
sqrt2=sqrt(2);
b=zeros(m,n);
for u=0:m-1
    for v=0:n-1
        if(u==0)
            ualpha=udenom;
        else
            ualpha=udenom*sqrt2;
        end
        if(v==0)
            valpha=vdenom;
        else
            valpha=vdenom*sqrt2;
        end
        cosf1=(pi*u)/(2*m);
        cosf2=(pi*v)/(2*n);
        temp=0;
        for i=0:m-1
            for j=0:n-1
                temp=temp+a(i+1,j+1)*cos((2*i+1)*cosf1)*cos((2*j+1)*cosf2);
            end
        end
        b(u+1,v+1)=temp*ualpha*valpha;
    end
end

disp(b);
disp(dct2(a));

        
        