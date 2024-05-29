%创建中值滤波功能函数
function smoothImage = medianFilter(inputImage)
    windowSize =5;
    % 使用内置函数实现中值滤波器
    smoothImage = medfilt3(inputImage,[windowSize,windowSize,windowSize]);

    
end