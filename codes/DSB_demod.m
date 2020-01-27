function [demod , a , b , t] = DSB_demod(data,fp , fs ,fc, lim , ac)
%   this function aims to demodulate a signal modulated with the
%   conventional am modulation such as (1+u*x(t))cos(wt)
%   inputs:
%       data : modulated signal 
%       fp   : pass frequency of lowpass filter
%       fs   : sampling frequency
%       fc   : frequency of carrier
%       lim  : limits of original data and modulated one
%       ac   : amplitude of carrier signal as ac*cos(wt)

t = linspace(-lim , lim , fs*2*lim);
t = t.';
a = cos(2*pi*fc.*t).* data;
b=lowpass(a,fp ,fs);
demod = (2/ac.*b);

end

