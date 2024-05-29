function pyramidImage = gaussian_pyramid(image)
    % image: 输入的图像矩阵
    % levels: 金字塔的层数
    % pyramidImage: 层叠显示的金字塔图像

    % 创建高斯金字塔
    levels = 5;
    gaussianPyramid = createGaussianPyramid(image, levels);
    % 获取图像的尺寸信息
    [height, width, ~] = size(image);

    % 创建一个空白图像来存储层叠后的金字塔图像
    pyramidImage = zeros(height*levels, width, 3);

    % 将金字塔的每一层图像填充到层叠图像中
    for i = 1:levels
        % 将图像调整为与金字塔层相同尺寸
        resizedImage = imresize(gaussianPyramid{i}, [height, width]);

        % 将调整后的图像放置在层叠图像中的相应位置
        startRow = (i-1) * height + 1;
        endRow = i * height;
        pyramidImage(startRow:endRow, :, :) = resizedImage;
    end

    % 显示层叠后的金字塔图像
    
end
