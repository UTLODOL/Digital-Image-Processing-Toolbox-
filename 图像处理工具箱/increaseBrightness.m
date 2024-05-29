function enhancedImage = increaseBrightness(image, adjustment)
    % image: 输入的图像矩阵
    % adjustment: 亮度增加的调整值（取值范围：[-1, 1]）
    % enhancedImage: 增加亮度后的图像矩阵

    % 确保图像矩阵为double类型
    if ~isa(image, 'double')
        image = im2double(image);
    end

    % 调整亮度
    enhancedImage = image + adjustment;

    % 将图像矩阵的值限制在[0, 1]范围内
    enhancedImage(enhancedImage < 0) = 0;
    enhancedImage(enhancedImage > 1) = 1;
end
