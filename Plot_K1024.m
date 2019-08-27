clc
clear all
close all
K = [3,5,10,20,30];
% without offset
% PSNR_Pro = [28.28, 29.43, 30.73, 31.88, 32.55];
% PSNR_VBM = [28.60, 29.15, 29.68, 30.02, 30.15];
% PSNR_ave = [23.71, 25.75, 28.34, 30.60, 31.75];
% with offset
PSNR_Pro = [24.43, 25.15, 24.98, 25.42, 25.54];
PSNR_VBM = [25.00, 25.40, 25.19, 25.49, 25.58];
PSNR_ave = [22.74, 23.83, 24.22, 25.07, 25.32];
figure
hold on
plot(K,PSNR_Pro,'b-d')
plot(K,PSNR_VBM,'r-o')
plot(K,PSNR_ave,'g-x')
legend('Linear','VBM3D','Averaging')
box on
xlabel('image number K')
ylabel('PSNR')

Time_Pro = [10.31,10.48,10.80,8.34,9.14];
Time_VBM = [6.04,7.83,19.67,23.12,33.25];
Time_ave = [0.0276,0.031,0.0397,0.0540,0.0693];
figure
hold on
plot(K,Time_Pro,'b-d')
plot(K,Time_VBM,'r-o')
plot(K,Time_ave,'g-x')
legend('Baysian','VBM3D','Averaging')
box on
xlabel('image number K')
ylabel('Time/sec')
