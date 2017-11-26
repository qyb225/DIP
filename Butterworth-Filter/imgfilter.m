function [filtered_img] = imgfilter(img, filter_model)
    g = get_spectrum(img);
    filtered_g = g .* filter_model;
    filtered_centralized_img_mat = real(ifft2(filtered_g));
    filtered_img = decentralize(filtered_centralized_img_mat);
end

