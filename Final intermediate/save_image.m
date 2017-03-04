function save_image

global file_name path_name NEW;

[file_name, path_name] = uiputfile;

tmp = strcat(path_name, '\', file_name, '.jpg');

if file_name ~= 0
    imwrite(NEW, tmp, 'jpg');
end