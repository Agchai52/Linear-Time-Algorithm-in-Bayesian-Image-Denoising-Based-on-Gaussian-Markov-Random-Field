clc
clear all
close all
K = [3,5,10,20,30];
% PSNR_Pro = [29.26,30.90,32.81,34.61,35.68];
% PSNR_VBM = [30.33,31.30,32.25,32.90,33.18];
% PSNR_ave = [23.47,25.69,28.69,31.70,33.43];

figure
hold on
plot(K,PSNR_Pro,'b-d')
plot(K,PSNR_VBM,'r-o')
plot(K,PSNR_ave,'g-x')
legend('Linear','VBM3D','Averaging')
box on
xlabel('image number K')
ylabel('PSNR')

