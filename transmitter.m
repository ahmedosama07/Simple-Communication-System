%brief: This function acts as the tansmitter of the system 
%param: it takes no parameters
%return: it returns the sound file and the sampling frequency
function [x fs t] = transmitter(filename)
    [x fs] = audioread(filename);
    sound(x, fs);
    t_sec = duration_sec(x, fs);
    t = time_domain(t_sec, fs, x);
    freq_domain(fs, x);
end