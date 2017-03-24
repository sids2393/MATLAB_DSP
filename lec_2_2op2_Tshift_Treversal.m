clc;
clear all;
close all;
%Operations on the independent variable
%Time shifting of the independent variable
x=input('Enter the input sequence:');
n0=input('Enter the +ve shift:');
n1=input('Enter the -ve shift:');
l=length(x);
subplot(2,2,1);
stem(0:l-1,x);
xlabel('time');
ylabel('Amplitude');
title('Input signal');
i=n0:l+n0-1;
j=n1:l+n1-1;
subplot(2,2,2);
stem(i,x);
xlabel('time');
ylabel('Amplitude');
title('Positive shifted signal');
subplot(2,2,3);
stem(j,x);
xlabel('time');
ylabel('Amnplitude');
title('Negative shifted signal');
%Time reversal
subplot(2,2,4);
stem(-1*(0:l-1),x);
xlabel('time');
ylabel('Amplitude');
title('Time reversal signal');