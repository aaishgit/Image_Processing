clc;
T = [1 2 3;4 5 6;7 8 9];
%A = dct2(T);
A = T;
[m,n] = size(A);
res = []
disp('original dct matrix');
disp(A);
i=1;
j=1;
res = [res;A(i,j)];
while(i~=m || j~=n)
    if(j<n)
    j=j+1; %forward,check bounds
    res = [res;A(i,j)];
    elseif(i<m)
        i = i+1;
        res = [res;A(i,j)];
    end
    %move diagonally downward
    while(j>1 && i<m)
        i=i+1;
        j=j-1;
        res = [res;A(i,j)];
    end
    if(i<m)
    i=i+1; %downward,check bounds
    res = [res;A(i,j)];
    elseif(j<n)
        j = j+1;
        res = [res;A(i,j)];
    end
    %move diagonally upward
    while(i>1 && j<n)
        i=i-1;
        j=j+1;
        res = [res;A(i,j)];
    end
end
disp('reordered DCT');
disp(res);