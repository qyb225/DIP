function img_histmatching_A = histogram_matching(img_A, hist_img_C)
    img_hist_A = histogram_equalization(img_A);

    cdf_vec_C = image_cdf(hist_img_C);
    transfer_table_C = hist_eq_transfer_table(cdf_vec_C);
    
    transfer_table_inv_C = hist_eq_transfer_table_inv(transfer_table_C);
    
    img_hist_A_mat = int32(img_hist_A);
    img_histmatching_A = uint8(transfer_table_inv_C(img_hist_A_mat + 1));
end

function transfer_table_inv = hist_eq_transfer_table_inv(transfer_table)
    transfer_table_inv = zeros(256, 1);
    for i = 1 : 256
        pos = transfer_table(i) + 1;
        if transfer_table_inv(pos) == 0
            transfer_table_inv(pos) = i - 1;
        end
    end
    for i = 2 : 256
        if transfer_table_inv(i) == 0
            transfer_table_inv(i) = transfer_table_inv(i - 1);
        end
    end
end