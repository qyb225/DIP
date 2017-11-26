function [centralize_mat] = centralize(img)
    [M, N] = size(img);
    centralize_mat = zeros(M, N);
    for i = 1 : M
        for j = 1 : N
            centralize_mat(i, j) = double(img(i, j)) * (-1) ^ (i + j);
        end
    end
end

