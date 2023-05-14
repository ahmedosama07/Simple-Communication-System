function [x, fs, t] = transmitter(filename)
%transmitter Summary of this function goes here
%   brief: This function acts as the tansmitter of the system
%   param: it takes sound file as a parameter
%   return: it returns the sound file and the sampling frequency
[x, fs] = audioread(filename);
sound(x, fs);
t_sec = duration_sec(x, fs);
t = time_domain(t_sec, fs);
end