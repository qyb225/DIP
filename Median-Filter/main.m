img = imread('./images/sport car.pgm');

noise_img = salt_pepper_noise(img);
filtered_img = median_filter(noise_img);

set(gcf, 'position', [30 30 900 400]);
subplot(2, 2, 1);
imshow(img);
title('Original img');

subplot(2, 2, 2);
imshow(noise_img);
title('Salt pepper noise');

subplot(2, 2, 3);
imshow(filtered_img);
title('Filtered img');