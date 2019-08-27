clc
clear all
close all
%% Load Image
img1 = double(imread('Cameraman256.png'));
img2 = double(imread('Lena512.png'));
img3 = double(imread('man1024.bmp'));
% img3 = imread('peppers.png');
K = 0;
I0 = img3/255;
I_all = cell(K,1);
I_all_ash = cell(K,1);
%% Create Image with Noise 
     mu = 0;
  sigma = 30/255;
  
mean_img = mean(mean(I0));
for k = 1:K
    I_noise = PrepareOneOffsetImage(I0,sigma);
    I_all(k) = {I_noise};
    I_all_ash(k) = {I_noise-mean_img};
end
I0 = I0*255;

figure,imshow(I0/255)
figure,imshow(cell2mat(I_all_ash(1))/255)
save NoisedData_1024_30_os I0 I_all
save Average_Shift_1024_30_os mean_img I_all_ash I0