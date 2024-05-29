function denoisedImage = boxFilter_sharpen(inputImage)
%%输入图像参数,确保图像为灰度图像
    inputImage = im2gray(inputImage);
    box_kernel = [0,0,0;0,2,0;0,0,0]-(1/9)*ones(3,3);
    denoisedImage = imfilter(inputImage,box_kernel);
end