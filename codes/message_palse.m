function [m , t] = message_palse(fs,lim , causal )
% this function samples message signal by the sampling rate fs
% message signal is sinc(100t) for 0<t<0.5 and o otherwise
t = linspace(-lim , lim , fs*2*lim).';
z = t >= 0 ;
m = t >= -1/2 & t<=1/2;
if ~causal
    m = m.*z;
end
end


