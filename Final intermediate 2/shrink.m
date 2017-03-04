function shrink

global filename path NEW;

full_path = strcat(path, '\', filename);

RGB = imread(full_path);
figure,imshow(RGB);

[height, width, colormap] = size(RGB);

NEW = zeros(round(height/2), round(width/2), colormap, 'uint8');

original_height = height;
original_width = width;

c_map = colormap;

new_height = height/2;
new_width = width/2;

for c = drange(1:c_map)
    for h = drange(1:original_height)
        for w = drange(1:original_width)
            int_height = round(h/2);
            int_width = round(w/2);
            NEW(int_height, int_width, c) = RGB(h, w, c);
        end
    end
end

figure,imshow(NEW);