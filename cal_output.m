%brief: This function acts as the tansmitter of the system 
%param: it takes 2 paramters: the signal, the impulse response h_t
%return: it returns the sound file and the sampling frequency
function output = cal_output(signal, h_t)
    x_t = signal(:);
    output = conv(x_t, h_t);
end