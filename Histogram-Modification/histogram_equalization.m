function img_histeq = histogram_equalization(img)
    cdf_vec = image_cdf(img);
    transfer_table = hist_eq_transfer_table(cdf_vec);
    img_mat = int32(img);
    img_histeq = uint8(transfer_table(img_mat + 1));
end
