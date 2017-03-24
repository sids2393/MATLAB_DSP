clc;
clear all;
close all;
%Program to perform Linear Convolution
 
x=input('Enter the first input sequence:');
l1=length(x);
subplot(3,2,1);
stem(x);
xlabel('Time index n---->');
ylabel('Amplitude');
title('input sequence');
 
h=input('Enter the system response sequence:');
l2=length(h);
subplot(3,2,2);
stem(h);
xlabel('Time index n---->');
ylabel('Amplitude');
title('system response sequence');
 
if l1>l2
    l3=l1-l2;
    h=[h,zeros(1,l3)];
elseif l2>l1
    l3=l2-l1;
    x=[x,zeros(1,l3)];
end
 
y=conv(x,h);
disp('The time domain convoluted sequence is:');
disp(y);
subplot(3,2,3);
stem(y);
xlabel('Time index n---->');
ylabel('Amplitude');
title('convoluted output sequence');
 
 
 
X=fft(x,length(y));
H=fft(h,length(y));
Y=X.*H;
disp('The frequency domain multiplied sequence is:');
disp(Y);
subplot(3,2,4);
stem(Y);
xlabel('Time index n---->');
ylabel('Amplitude');
title('frequency domain multiplied response');
 
y1=ifft(Y,length(Y));
disp('The inverse fourier transformed sequence is:');
disp(y1);
subplot(3,2,5);
stem(y1);
xlabel('Time index n---->');
ylabel('Amplitude');
title('output after inverse fourier transform');
 
 e=y-y1;
disp('The Error sequence:')
disp(abs(e));
subplot(3,2,6);
stem(abs(e));
xlabel('Time index n---->');
ylabel('Amplitude');
title('error sequence');
