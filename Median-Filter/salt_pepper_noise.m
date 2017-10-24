function noise_img = salt_pepper_noise(img)
    rand_1 = rand(size(img)) * 256;
    rand_2 = rand(size(img)) * 256;
    salt_pepper_black = 255 * (img > rand_1 & img > rand_2);
    salt_pepper_white = 255 * (img < rand_1 & img < rand_2);
    noise_img = img + uint8(salt_pepper_black);
    noise_img = noise_img - uint8(salt_pepper_white);
end
