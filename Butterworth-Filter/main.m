img = imread('./images/barb.png');
figure;
subplot(1, 2, 1);
imshow(img);

subplot(1, 2, 2);
imshow(log(1 + abs(get_spectrum(img))), []);

fprintf('Press Enter to continue...\n');
pause;

%10
filtered_img = butterworth_filter(img, 10, 1, 'low');
figure;
subplot(1, 2, 1);
imshow(filtered_img);

subplot(1, 2, 2);
imshow(log(1 + abs(get_spectrum(filtered_img))), []);

fprintf('Press Enter to continue...\n');
pause;

%20
filtered_img = butterworth_filter(img, 200, 1, 'low');
figure;
subplot(1, 2, 1);
imshow(filtered_img);

subplot(1, 2, 2);
imshow(log(1 + abs(get_spectrum(filtered_img))), []);

fprintf('Press Enter to continue...\n');
pause;

%40
filtered_img = butterworth_filter(img, 40, 1, 'low');
figure;
subplot(1, 2, 1);
imshow(filtered_img);

subplot(1, 2, 2);
imshow(log(1 + abs(get_spectrum(filtered_img))), []);

fprintf('Press Enter to continue...\n');
pause;

%80
filtered_img = butterworth_filter(img, 80, 1, 'low');
figure;
subplot(1, 2, 1);
imshow(filtered_img);

subplot(1, 2, 2);
imshow(log(1 + abs(get_spectrum(filtered_img))), []);
