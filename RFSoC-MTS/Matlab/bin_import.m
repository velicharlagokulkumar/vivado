clc;
clear all;
close all;

filedir = './'
fs_converter = 3.072e9;      % Sample rate at the converter
num_samples = 2^16;          % Number of samples
num_bits = 2^15;             % Number of bits
decimation_rate = 1;         % Decimation rate the ADC is set to.

filenamebin2 = [filedir '../cap.bin']
fs = fs_converter/decimation_rate

%  Open the adc capture bin file
fid3=fopen(filenamebin2,'r');
Y3 = fread(fid3,num_samples,'int16',0,'native');
fclose(fid3);
Y3t = transpose(Y3)

% plot time domain signal
figure(1);
plot(Y3t)  
title('Waveform')
ylabel(['Amplitude - DBFS = 32768'])
xlabel(['Sample'])
ax = get(gca);
ax.YAxis.Exponent = 0;
ax.XAxis.Exponent = 0;