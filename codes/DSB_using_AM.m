function [m_c , t] = DSB_using_AM(message ,fs ,lim ,fc ,ac,phase)
% this function impliments a regular Amplitide modulation for message
% signal ''message''
% inputs :
%   message : message signal to be modulated
%   fc      : frequency of carriet as in cos(2*pi*fc)
%   fs      : sampling frequency of signals(both carrier and message)
%   lim     : symmetric limit of input in time as -lim(s) < t < +lim(s)
%   ac      : carrier gain as in ac*cos(...)

[a ,t]= AM_reg(message ,fs , lim ,fc,ac,1/2 , phase);
[b ,t]= AM_reg(message ,fs , lim ,fc,ac,-1/2 , phase);
m_c = a-b;
end

