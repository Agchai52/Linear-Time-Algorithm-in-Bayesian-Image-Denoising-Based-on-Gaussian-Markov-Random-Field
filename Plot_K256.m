clc
clear all
close all
K = [3,5,10,20,30];
PSNR_Pro = [26.87,28.13,29.89,31.78,32.92];
PSNR_VBM = [25.35,25.66,25.97,26.15,26.23];
PSNR_ave = [23.68,25.79,28.60,31.18,32.57];
% SSIM_Pro = [0.4038,0.4403,0.4910,0.5465,0.5833];
% SSIM_VBM = [0.3763,0.4146,0.4572,0.5022,0.5255];
% SSIM_ave = [0.3453,0.3927,0.4587,0.5259,0.5675];

figure
hold on
plot(K,PSNR_Pro,'b-d')
plot(K,PSNR_VBM,'r-o')
plot(K,PSNR_ave,'g-x')
legend('Linear','VBM3D','Averaging')
box on
xlabel('image number K')
ylabel('PSNR')

