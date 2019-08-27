function [I1] = PrepareOneOffsetImage(I0,sigma)
%% Noise
I0 = imnoise(I0,'gaussian',0,sigma^2)*255;

%% Offset
dy = -3+6*rand(1); % range [-3,3];
dx = -3+6*rand(1); % range [-3,3];

%% Rotation
theta = 0;%-5+10*rand(1); % range [-5,5];

%% Create a new image
original = I0;
outputViewo = imref2d(size(original));
T = [cosd(theta) sind(theta) 0;-sind(theta) cosd(theta) 0; 0 0 1]*[1 0 0;0 1 0;dx dy 1];
tr = projective2d(T);
distorted  = imwarp(original,tr,'cubic','OutputView',outputViewo);
I1 = distorted;

%%
%H = inv(T);

end

