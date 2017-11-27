function [filtered_img] = butterworth_filter(img, D0, level, type)
    g = get_spectrum(img);
    filter_model = b_filter_g(size(img), D0, level, type);
    filtered_g = g .* filter_model;
    filtered_centralized_img_mat = real(ifft2(filtered_g));
    filtered_img = decentralize(filtered_centralized_img_mat);
end

function [b_filter] = b_filter_g(size, D0, level, type)
    M = size(1);
    N = size(2);
    b_filter = zeros(M, N);
    m = floor(M / 2);
    n = floor(N / 2);
    for i = 1 : M
        for j = 1 : N
            d = sqrt((i - m) ^ 2 + (j - n) ^ 2);
            if (strcmp(type, 'low'))
                b_filter(i, j) = 1 / (1 + (d / D0) ^ (2 * level));
            elseif (strcmp(type, 'high'))
                b_filter(i, j) = 1 / (1 + (D0 / d) ^ (2 * level));
            end
        end
    end
end