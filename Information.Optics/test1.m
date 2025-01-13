% 定义矩孔的参数
width = 20;  % 矩孔宽度
height = 10; % 矩孔高度
N = 256;     % 离散采样点数

% 创建矩孔
rectangularAperture = zeros(N, N);
rectangularAperture(N/2-height/2:N/2+height/2, N/2-width/2:N/2+width/2) = 1;

% 显示矩孔
figure;
subplot(2, 2, 1);
imshow(rectangularAperture, 'colormap', gray);
title('Rectangular Aperture');

% 进行二维傅立叶变换
fourierTransform = fftshift(fft2(rectangularAperture));

% 显示傅立叶变换结果的振幅和相位
subplot(2, 2, 2);
imshow(log(1 + abs(fourierTransform)), []);
title('Fourier Transform (Amplitude)');

subplot(2, 2, 3);
imshow(angle(fourierTransform), []);
title('Fourier Transform (Phase)');

% 显示频谱
subplot(2, 2, 4);
imshow(log(1 + abs(fourierTransform)), 'colormap', jet);
title('Frequency Spectrum');
