function [demod , a , b , t] = AM_demod(data,fp , fs ,fc, lim , ac , u)
%   this function aims to demodulate a signal modulated with the
%   conventional am modulation such as (1+u*x(t))cos(wt)
%   inputs:
%       data : modulated signal 
%       fp   : pass frequency of lowpass filter
%       fs   : sampling frequency
%       fc   : frequency of carrier
%       lim  : limits of original data and modulated one
%       ac   : amplitude of carrier signal as ac*cos(wt)
%       u    : modulation index

t = linspace(-lim , lim , fs*2*lim);
t = t.';
a = cos(2*pi*fc.*t).* data;
b=lowpass(a,fp ,fs);
demod = (2/ac.*b - 1)/u;

end

