function insert_image

global filename path;
[filename,path] = uigetfile('D:\*.jpg,*.JPG,*.jpeg,*.JPEG');

tmp = strcat(path, '\', filename);
IMG = imread(tmp);
figure,imshow(IMG);

return;