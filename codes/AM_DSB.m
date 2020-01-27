function [m_c , t] = AM_DSB(message ,fs ,lim ,fc ,ac ,phase)
% this function impliments a regular Amplitide modulation for message
% signal ''message''
% inputs :
%   message : message signal to be modulated
%   fc      : frequency of carriet as in cos(2*pi*fc)
%   fs      : sampling frequency of signals(both carrier and message)
%   phase   : initial phase of carrier signal as in cos(2 pi fc t + phase)
%   lim     : symmetric limit of input in time as -lim(s) < t < +lim(s)
%   ac      : carrier gain as in ac*cos(...)

t = linspace(-lim , lim , fs*2*lim);
m_c = (message).*((ac*cos(2*pi*fc*t +phase)).');

end

