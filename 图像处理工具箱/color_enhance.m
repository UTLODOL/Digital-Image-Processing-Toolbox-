function enhancedImage = color_enhance(image, redAdjustment, greenAdjustment, blueAdjustment)
    % image: 输入的图像矩阵
    % redAdjustment: 红色通道的增强值（取值范围：[-1, 1]）
    % greenAdjustment: 绿色通道的增强值（取值范围：[-1, 1]）
    % blueAdjustment: 蓝色通道的增强值（取值范围：[-1, 1]）
    % enhancedImage: 增强后的图像矩阵

    % 确保图像矩阵为double类型
    if ~isa(image, 'double')
        image = im2double(image);
    end

    % 分离图像的红、绿、蓝通道
    redChannel = image(:, :, 1);
    greenChannel = image(:, :, 2);
    blueChannel = image(:, :, 3);

    % 对各个通道进行增强
    enhancedRedChannel = redChannel + redAdjustment;
    enhancedGreenChannel = greenChannel + greenAdjustment;
    enhancedBlueChannel = blueChannel + blueAdjustment;

    % 将增强后的通道值限制在[0, 1]范围内
    enhancedRedChannel(enhancedRedChannel < 0) = 0;
    enhancedRedChannel(enhancedRedChannel > 1) = 1;

    enhancedGreenChannel(enhancedGreenChannel < 0) = 0;
    enhancedGreenChannel(enhancedGreenChannel > 1) = 1;

    enhancedBlueChannel(enhancedBlueChannel < 0) = 0;
    enhancedBlueChannel(enhancedBlueChannel > 1) = 1;

    % 合并增强后的通道得到增强后的图像矩阵
    enhancedImage = cat(3, enhancedRedChannel, enhancedGreenChannel, enhancedBlueChannel);
end

