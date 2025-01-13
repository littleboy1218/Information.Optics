% 定义图像大小和圆的参数
imageSize = 1000; % 图像大小
radius = 50; % 圆孔半径
centerX = imageSize / 2; % 圆心 x 坐标
centerY = imageSize / 2; % 圆心 y 坐标

% 生成网格
[X, Y] = meshgrid(1:0.1:imageSize, 1:0.1:imageSize);

% 计算每个点到圆心的距离
distancesx =abs( X - centerX);
distancesy=abs( Y - centerY);

% 创建一个和网格一样大小的矩阵，其中圆孔内部为1（白色），圆孔外部为0（黑色）
circleImage = (distancesx <= radius)&(distancesy <= radius);

% 显示图像
imshow(circleImage);
title('圆孔图像');