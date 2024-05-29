function image = gamma_transform(im,gamma)
%伽马变换，需要imaget图片和相关参数   d
%GAMMA_TRANSFORM Summary of this function goes here
%   Detailed explanation goes here
isdouble =isa(im,'double');
if isdouble
    im = im .^gamma;
else
    im = im2double(im);
    im = im.^gamma;
end
image =im;
end

