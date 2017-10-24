function filtered_img = median_filter(noise_img)
    noise_img_expand = [noise_img(1, :); noise_img; noise_img(size(noise_img, 1), :)];
    noise_img_expand = [noise_img_expand(:, 1), noise_img_expand, noise_img_expand(:, size(noise_img_expand, 2))];
    filtered_img = zeros(size(noise_img));
    for i = 1 : size(noise_img, 1)
        for j = 1 : size(noise_img, 2)
            current_mat = noise_img_expand(i : i + 2, j : j + 2);
            mid = get_median(current_mat);
            filtered_img(i, j) = mid;
        end
    end
    filtered_img = uint8(filtered_img);
end

function mid = get_median(mat)
    [m, n] = size(mat);
    mid = median(reshape(mat, 1, m * n));
end