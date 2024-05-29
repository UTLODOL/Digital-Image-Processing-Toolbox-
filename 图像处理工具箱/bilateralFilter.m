%创建双边滤波功能函数
function sharpImage = bilateralFilter(inputImage)
    % 使用内置函数实现双边滤波器
    [row,col,channel]=size(inputImage);
    sharpImage = zeros(row,col,channel,'uint8');
    for i = 1:channel
        sharpImage(:,:,i) = imbilatfilt(inputImage(:,:,i),0.5, 0.1);
    end
end