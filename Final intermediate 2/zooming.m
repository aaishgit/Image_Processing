function zooming

global filename path NEW;

% int_reply = str2num(reply);
% 
% int_reply = reply(1:1);
% disp(int_reply);

full_path = strcat(path, '\', filename);

RGB = imread(full_path);
figure,imshow(RGB);

[height, width, colormap] = size(RGB);

% NEW = zeros(height*2, width*2, colormap, 'uint8');

NEW = zeros(height*2, width*2, colormap, 'uint8');

original_height = height;
original_width = width;

c_map = colormap;

new_height = height*2;
new_width = width*2;

for c = drange(1:c_map)
    for h = drange(1:new_height)
        for w = drange(1:new_width)
            int_height = round(h/2);
            int_width = round(w/2);
            NEW(h, w, c) = RGB(int_height, int_width, c);
        end
    end
end

figure,imshow(NEW);