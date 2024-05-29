function equalizedImage = histogramEqualization(image)
    % image: 输入的图像矩阵
    % equalizedImage: 直方图均衡化后的图像矩阵

    % 将图像从RGB颜色空间转换为YCbCr颜色空间
    ycbcrImage = rgb2ycbcr(image);

    % 提取亮度分量
    Y = ycbcrImage(:, :, 1);

    % 对亮度分量进行直方图均衡化
    equalizedY = histeq(Y);

    % 将均衡化后的亮度分量替换回YCbCr图像中
    ycbcrImage(:, :, 1) = equalizedY;

    % 将图像从YCbCr颜色空间转换回RGB颜色空间
    equalizedImage = ycbcr2rgb(ycbcrImage);
end
