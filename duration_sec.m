%brief: This function calculates the duration of the sound file in seconds
%param: it takes two parameters: the sampling frequency fs and the sound
%       file x
%return: it returns the duration in seconds
function time_in_seconds = duration_sec(x, fs)
    time_in_seconds = length(x) / fs;
end