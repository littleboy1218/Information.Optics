% 定义双缝的参数
slitWidth = 5;  % 缝的宽度
slitDistance = 20;  % 缝的中心距离

% 创建包含双缝的图像
figure;
rectangle('Position', [-0.5*slitDistance -0.5*slitWidth slitDistance slitWidth], 'FaceColor', 'white');
hold on;
rectangle('Position', [0.5*slitDistance -0.5*slitWidth slitDistance slitWidth], 'FaceColor', 'white');

% 添加坐标轴并设置坐标轴范围
axis equal;  % 保持坐标轴刻度相等
axis([-30 30 -10 10]);  % 设置坐标轴范围
title('Image with Double Slits');
