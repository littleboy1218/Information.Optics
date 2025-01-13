function fresnelDiffraction()
    wavelength = 0.000532;

    % 矩形孔的宽度和高度（单位：毫米）
    width = 4;
    height = 4;

    % 接收屏位置（单位：毫米）
    distance = 200;

    % X和Y轴范围
    x_range = 3;
    y_range = 3;

    % 创建网格
    x = linspace(-x_range/2, x_range/2, 3000);
    y = linspace(-y_range/2, y_range/2, 3000);
    [X, Y] = meshgrid(x, y);

    % 计算衍射公式
    intensity = (sin(pi * width * X / (wavelength * distance)) ./ (pi * width * X / (wavelength * distance))).^2 ...
        .* (sin(pi * height * Y / (wavelength * distance)) ./ (pi * height * Y / (wavelength * distance))).^2;
    intensity = intensity.^2; % 强度取平方增强可视化效果

    % 绘制图像
    figure;
    imagesc(x, y, intensity);
    colormap('hot');
    colorbar;
    title('Fresnel Diffraction Pattern (Laser Source)');
    xlabel('X-axis');
    ylabel('Y-axis');
    axis xy;
    axis equal;
    xlim([-x_range/2, x_range/2]);
    ylim([-y_range/2, y_range/2]);

end