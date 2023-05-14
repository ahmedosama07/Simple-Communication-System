%brief: This function acts as the tansmitter of the system 
%param: it takes 2 paramters: the signal, the impulse response h_t
%return: it returns the sound file and the sampling frequency
function [output, t_conv] = cal_output(signal, h_t, fs)
    x_t = signal(:);
    output = conv(x_t, h_t);
    t_end = length(output)./fs;
    t_conv = linspace(0,t_end, t_end*fs);
end