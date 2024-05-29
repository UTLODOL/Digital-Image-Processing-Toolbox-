function gaussianPyramid = createGaussianPyramid(image, levels)
    %%gaussian_pyramid的实现函数，要具体使用请看gaussian_pyramid(
    % levels: 金字塔的层数
    % gaussianPyramid: 高斯金字塔（存储为cell数组）

    % 确保图像矩阵为double类型
    if ~isa(image, 'double')
        image = im2double(image);
    end

    % 创建一个空的cell数组来存储金字塔的每一层
    gaussianPyramid = cell(levels, 1);

    % 添加原始图像到金字塔的第一层
    gaussianPyramid{1} = image;

    % 通过impyramid函数逐层生成高斯金字塔
    for i = 2:levels
        % 使用默认的方法（reduce）来缩小图像
        reducedImage = impyramid(gaussianPyramid{i-1}, 'reduce');
        % 将缩小后的图像添加到金字塔的下一层
        gaussianPyramid{i} = reducedImage;
    end
end