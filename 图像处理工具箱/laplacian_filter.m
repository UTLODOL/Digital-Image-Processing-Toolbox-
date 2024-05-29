function output_image = laplacian_filter(input_image)
 % image: 输入的图像矩阵
    % filteredImage: 拉普拉斯滤波后的图像矩阵

    % 定义拉普拉斯滤波模板
    laplacianFilter = [0 -1 0; -1 4 -1; 0 -1 0];

    % 使用imfilter函数进行滤波操作
    output_image = imfilter(input_image, laplacianFilter);
end