function cdf_vec = image_cdf(img)
    cdf_vec = zeros(256, 1);
    for i = 1 : size(img, 1)
        for j = 1 : size(img, 2)
            pix_val = int32(img(i, j));
            cdf_vec(pix_val + 1) = cdf_vec(pix_val + 1) + 1;
        end
    end
    for i = 2 : 256
        cdf_vec(i) = cdf_vec(i - 1) + cdf_vec(i);
    end
end