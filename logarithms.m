A = imread('zelda.bmp');
A=double(A);
[m,n]=size(A);
for i=1:m
    for j=1:n
        A(i,j)=log10(1+A(i,j));
    end
end;
A=mat2gray(A);
% smin=min(min(A));
% smax=max(max(A));
imshow(A);