clc;
clear all;
close all;
 %Properties of DT Systems(Causality)
%y(n)=x(-n);
 
x1=input('Enter input sequence x1:');
n1=input('Enter lower limit n1:');
n2=input('Enter lower limit n2:');
flag=0;
for n=n1:n2
  arg=-n;
  if arg>n;
      flag=1;
end;
end;
 
if(flag==1)
    display('system is causal');
else
    display('system is non-causal');
end;
