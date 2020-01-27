function [m_c , t] = AM_SSB(message ,fs ,lim ,fc ,ac ,phase , type)
% this function impliments a single side band Amplitide modulation for message
% signal ''message''
% inputs :
%   message : message signal to be modulated
%   fc      : frequency of carriet as in cos(2*pi*fc)
%   fs      : sampling frequency of signals(both carrier and message)
%   phase   : initial phase of carrier signal as in cos(2 pi fc t + phase)
%   lim     : symmetric limit of input in time as -lim(s) < t < +lim(s)
%   ac      : carrier gain as in ac*cos(...)
%   type    : type of modulation (upper , lower)

t = linspace(-lim , lim , fs*2*lim).';
h = imag(hilbert(message));
if type
    m_c = (message).*((ac/2*cos(2*pi*fc*t +phase))) - (h).*((ac/2*sin(2*pi*fc*t +phase)));
else
    m_c = (message).*((ac/2*cos(2*pi*fc*t +phase))) + (h).*((ac/2*sin(2*pi*fc*t +phase)));
end

end
