function output = cal_output(signal, h_t)
%channel Summary of this function goes here
%   brief: This function calculates the convolution of the signal and
%   channel response
%   param: it takes 3 paramters: the signal, the impulse response h_t,
%   sampling frequency
%   return: it returns the output signal and time
    x_t = signal(:);
    output = conv(x_t, h_t);
end