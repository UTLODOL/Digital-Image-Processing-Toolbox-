function adjustedImage = logadjustContrast(image, c)
    % image: 输入的图像矩阵
    % c: 对数变换参数 0-10
    
    % 对数变换
    adjustedImage = c * log(1 + double(image));

    % 将图像归一化到[0, 255]范围
    adjustedImage = uint8(255 * (adjustedImage / max(adjustedImage(:))));
end
