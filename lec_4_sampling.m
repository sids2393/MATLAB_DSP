clc;
clear all;
close all;
%continuous sinusoidal signal
a=input('Enter the amplitude:');
f=input('Enter the Timeperiod:');
t=-10:1:20;
x=a*sin(2*pi*f*t);
subplot(2,3,1);
plot(t,x);
xlabel('time');
ylabel('Amplitude');
title('Sinusoidal signal');
%decimating the signal
d=input('Enter the value by which the signal is to be decimated:');
y1=decimate(x,d);
subplot(2,3,2);
stem(y1);
xlabel('time');
ylabel('Amplitude');
title('Decimated signal');
%interpolating the signal
i=input('Enter the value by which the signal is to be interpolated:');
y2=interp(x,i);
subplot(2,3,3);
stem(y2);
xlabel('time');
ylabel('Amplitude');
title('Interpolated signal');
%resampling the signal
y3=resample(x,3,2);
subplot(2,3,4);
stem(y3);
xlabel('time');
ylabel('Amplitude');
title('Resampled signal');
%downsampling the signal
y4=downsample(x,2);
subplot(2,3,5);
stem(y4);
xlabel('time');
ylabel('Amplitude');
title('Downsampled signal');
%upsampling the signal
y5=upsample(x,3);
subplot(2,3,6);
stem(y5);
xlabel('time');
ylabel('Amplitude');
title('Upsampled signal');
