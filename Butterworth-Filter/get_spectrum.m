function [spectrum] = get_spectrum(img)
    centralize_img = centralize(img);
    spectrum = fft2(centralize_img);
end