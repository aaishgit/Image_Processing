img = imread('zelda.bmp');
[row, col] = size(img);
v = size(1,row*col);
relMat = [];
for i=1:row
    for j=1:col
       v(1,i+j-1) = img(i,j);
    end
end
[m,n] = size(v);
N = 1;
for i=1:n-1
    if v(1,i)==v(1,i+1)
        N = N+1;
    else
        valuecode = v(i);
        lengthCode = N;
        relMat = [relMat; valuecode lengthCode];
        N = 1;
    end
end

relMat