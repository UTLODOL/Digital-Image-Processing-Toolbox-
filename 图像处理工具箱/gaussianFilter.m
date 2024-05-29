%定义高斯滤波功能函数
function smoothImage = gaussianFilter(inputImage, kernelSize, sigma)
    % 创建高斯核
    gaussKernel = fspecial('gaussian', kernelSize, sigma);
    
    % 使用高斯核对输入图像进行平滑处理
    smoothImage = imfilter(inputImage, gaussKernel, 'same');
end