function [m] = message(fs)
% this function samples message signal by the sampling rate fs
% message signal is sinc(100t) for 0<t<0.5 and o otherwise
lim = 0.5;
scale = 100;
t = linspace(-lim , lim , fs*2*lim);
m = sin(pi*scale*t)./(pi*t);
end

