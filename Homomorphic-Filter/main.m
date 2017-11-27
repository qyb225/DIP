img = imread('./images/office.jpg');
img = rgb2gray(img);

figure;
subplot(1, 2, 1);
imshow(img);

subplot(1, 2, 2);
imshow(log(1 + abs(get_spectrum(img))), []);

fprintf('Press Enter to continue...\n');
pause;

%homomorphic_filter(img, gamaH, gamaL, C, D0)
filtered_img = homomorphic_filter(img, 0.25, 2, 1, 10);
figure;
subplot(1, 2, 1);
imshow(filtered_img);

subplot(1, 2, 2);
imshow(log(1 + abs(get_spectrum(filtered_img))), []);

fprintf('Press Enter to continue...\n');
pause;

filtered_img = homomorphic_filter(img, 0.25, 2, 1, 20);
figure;
subplot(1, 2, 1);
imshow(filtered_img);

subplot(1, 2, 2);
imshow(log(1 + abs(get_spectrum(filtered_img))), []);

fprintf('Press Enter to continue...\n');
pause;

filtered_img = homomorphic_filter(img, 0.25, 2, 1, 40);
figure;
subplot(1, 2, 1);
imshow(filtered_img);

subplot(1, 2, 2);
imshow(log(1 + abs(get_spectrum(filtered_img))), []);

fprintf('Press Enter to continue...\n');
pause;

filtered_img = homomorphic_filter(img, 0.25, 2, 1, 80);
figure;
subplot(1, 2, 1);
imshow(filtered_img);

subplot(1, 2, 2);
imshow(log(1 + abs(get_spectrum(filtered_img))), []);