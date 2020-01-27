function [f,frequency] = ft(data,fs)
% this functions is a wraper for fast fourier transform(fft)
% inputs :
%   data   : input data that one wish to transform to frequency domain
%   fs     : sampling frequency of discrete data
% outputs:
%   f         : transformed data to frequency domain
%   frequency : frequency axis of data (useful for visualization)
%
sz = size(data,1);
ts = 1/fs;

f = fft(data);
f= fftshift(f);
f = f*ts;
frequency = linspace(-1/(2*ts) , 1/(2*ts) , sz);
end

