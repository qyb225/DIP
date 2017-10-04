%Part 1: Histogram Equalization
img_river = imread('./images/river.jpg');

%1.1 Processing
img_river_hist = histogram_equalization(img_river);

%1.2 Display
set(gcf, 'position', [30 30 1200 600]);
subplot(2, 3, 1);
imshow(img_river);
title('Before Histogram Equalization');

subplot(2, 3, 2);
imshow(img_river_hist);
title('After Histogram Equalization');

subplot(2, 3, 3);
imshow(histeq(img_river));
title('MATLAB histeq()');

set(gcf, 'position', [100 100 1200 600]);
subplot(2, 3, 4);
imhist(img_river);

subplot(2, 3, 5);
imhist(img_river_hist);

subplot(2, 3, 6);
imhist(histeq(img_river));

%1.4 save
imwrite(img_river_hist, './images/river-hist.jpg');

fprintf('Program paused. Press enter to continue.\n');
pause;

%Part 2: Histogram Matching
img_EightAM = imread('./images/EightAM.png');
img_LENA = imread('./images/LENA.png');

%1.1 Processing
img_EightAM_mathcing = histogram_matching(img_EightAM, img_LENA);

%1.2 Display
figure;
set(gcf, 'position', [80 40 1200 600]);
subplot(2, 3, 1);
imshow(img_EightAM);
title('Before hist-matching');

subplot(2, 3, 2);
imshow(img_LENA);
title('Hist-matching image');

subplot(2, 3, 3);
imshow(img_EightAM_mathcing);
title('After hist-matching');

subplot(2, 3, 4);
imhist(img_EightAM);

subplot(2, 3, 5);
imhist(img_LENA);

subplot(2, 3, 6);
imhist(img_EightAM_mathcing);

%1.3 save
imwrite(img_EightAM_mathcing, './images/EightAM-Mathcing.png');