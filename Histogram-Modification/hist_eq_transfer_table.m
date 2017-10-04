function transfer_table = hist_eq_transfer_table(cdf_vec)
    cdf_min = cdf_vec(1);
    cdf_max = cdf_vec(256);
    transfer_table = round(255 * (cdf_vec - cdf_min) / (cdf_max - cdf_min));
end