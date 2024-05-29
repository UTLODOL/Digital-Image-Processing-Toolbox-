function imgFilt = lowpassfilter(image)
[wx,wy] = meshgrid(-3 : 0.1 : 3, -3 : 0.1 : 3);type = '2d';
% type = '1d_horizontal';
% type = '1d_vertical');
if strcmp(type, '2d') == 1
    H = (1/25) * (1+2 * cos(wx) + 2 * cos(2 * wx) ).* (1+2 * cos(wy) + 2 * cos(2 * wy) );
    h = 1/25 * ones(5,5);
elseif strcmp(type, '1d_horizontal') == 1
    H = (1+2 * cos(wx) + 2 * cos(2 * wx) ) / 5;
    h = 1/5 * ones(1,5);
elseif strcmp(type, '1d_vertical') == 1
    H = (1+2 * cos(wy) + 2 * cos(2 * wy) ) / 5;
    h = 1/5 * ones(5,1);
end
imgFilt = imfilter(image, h, 'symmetric');
end

