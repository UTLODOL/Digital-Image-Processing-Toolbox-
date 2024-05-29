function noisyImage = addNoise(image, noiseType, noiseStrength)
    % image: 输入的图像矩阵
    % noiseType: 噪声类型，可选值为 'gaussian'、'salt-and-pepper'、'speckle'
    % noiseStrength: 噪声的强度（取值范围：[0, 1]）
    % noisyImage: 添加噪声后的图像矩阵

    % 确保图像矩阵为double类型
    if ~isa(image, 'double')
        image = im2double(image);
    end

    % 获取图像的大小
    imageSize = size(image);

    % 根据噪声类型生成相应的噪声
    switch lower(noiseType)
        case 'gaussian'
            noise = noiseStrength * randn(imageSize);
        case 'salt-and-pepper'
            noise = zeros(imageSize);
            % 随机生成白噪声
            saltNoise = rand(imageSize) < noiseStrength/2;
            pepperNoise = rand(imageSize) < noiseStrength/2;
            % 将白噪声设置为最大值（1）
            noise(saltNoise) = 1;
            % 将黑噪声设置为最小值（0）
            noise(pepperNoise) = 0;
        case 'speckle'
            noise = noiseStrength * randn(imageSize);
    end

    % 添加噪声
    noisyImage = image + noise;

    % 将图像矩阵的值限制在[0, 1]范围内
    noisyImage(noisyImage < 0) = 0;
    noisyImage(noisyImage > 1) = 1;
end
