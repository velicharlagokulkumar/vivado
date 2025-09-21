clc;
clear all;
close all;

filedir = '../'

filebinsync0 = [filedir 'cap0.bin']
filebinsync2 = [filedir 'cap2.bin']

fidadc0=fopen(filebinsync0,'r');
fidadc1=fopen(filebinsync2,'r');

adc_ch0 = fread(fidadc0,8192,'int16',0,'native');
adc_ch2 = fread(fidadc1,8192,'int16',0,'native');

fclose(fidadc0);
fclose(fidadc1);


% Plot Ch0,Ch2
figure(1);
plot(adc_ch0,'DisplayName','ch0');hold on;plot(adc_ch2,'DisplayName','ch2');
title('ADC 8k Capture')
xlabel('Sample')
ylabel(['Amplitude'])
legend