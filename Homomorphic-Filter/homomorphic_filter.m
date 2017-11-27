function [filtered_img] = homomorphic_filter(img, gamaH, gamaL, C, D0)
    I = double(img);
    logI = log(I + 1);
    ft_I = fft2(logI);
    filter_model = h_filter_g(size(img), gamaH, gamaL, C, D0);
    ift_I = ifft2(filter_model .* ft_I);
    filtered_img = real(exp(ift_I)) + 1;
    filtered_img = img_uint8(filtered_img);
end

function [h_filter] = h_filter_g(size, gamaH, gamaL, C, D0)
    M = size(1);
    N = size(2);
    m = floor(M / 2);
    n = floor(N / 2);
    h_filter = zeros(M, N);
    for i = 1 : M
        for j = 1 : N
            D_square = (i - m) ^ 2 + (j - n) ^ 2;
            h_filter(i, j) = (gamaH - gamaL) * (1 - exp(-C * D_square / D0 ^ 2)) + gamaL;
        end
    end
end

function [img] = img_uint8(img)
    max_pix = max(max(img));
    min_pix = min(min(img));
    img = uint8(255 * (img - min_pix) / (max_pix - min_pix));
end

