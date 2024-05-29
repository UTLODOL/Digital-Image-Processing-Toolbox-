function denoisedImage = boxFilter(inputImage)
%%输入图像参数
    denoisedImage = imfilter(inputImage, ones(3,3)*(1/9), 'same');
end