clc
clear all
close all
%% Load Image
img1 = double(imread('man1024.bmp'));

K = 5; % Num of images
I0 = img1/255;
I_all = cell(K,1);

%% Create Image with Noise 
     mu = 0;
  sigma = 30/255;
  
for k = 1:K
    I_noise = imnoise(I0,'gaussian',0,sigma^2)*255;
    I_all(k) = {I_noise};
end    
I0 = I0*255;

figure,imshow(I0/255)
figure,imshow(cell2mat(I_all(1))/255)

%%
I_VBM3D = MergeAllImages(I_all(1:K));
PSNR_VBM = mpsnr(I_VBM3D,I0)
SSIM_VBM = ssim(I_VBM3D,I0)
figure,imshow(I_VBM3D/255)