function [image,channel] = channelchoice(app)

%根据channel的返回不同的channel区域
if(app.channel1Button.Value)
   image = app.images1;
   channel = app.channel1im;
elseif(app.channel2Button.Value)
   image = app.images2;
   channel = app.channel2im;
elseif(app.channel3Button.Value)
   image = app.images3;
   channel = app.channel3im;
end
end

