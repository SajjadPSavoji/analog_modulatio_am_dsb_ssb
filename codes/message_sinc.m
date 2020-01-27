function [m , t] = message_sinc(fs , t_scale ,v_scale,lim , causal )
% this function samples message signal by the sampling rate fs
% message signal is sinc(100t) for 0<t<0.5 and o otherwise
t = linspace(-lim , lim , fs*2*lim);
z = t >= 0 ;
m = sin(pi*t_scale*t)./(pi*t_scale*t);
if ~causal
    m = m.*z;
end

m = v_scale .*m.';
end

