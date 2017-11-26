function [decentralize_img] = decentralize(centralize_mat)
    [M, N] = size(centralize_mat);
    decentralize_img = zeros(M, N);
    for i = 1 : M
        for j = 1 : N
            decentralize_img(i, j) = centralize_mat(i, j) * (-1) ^ (i + j);
        end
    end
    decentralize_img = uint8(decentralize_img);
end

