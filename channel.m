function [Y, ty] = channel(signal, t, fs, dim)
%channel Summary of this function goes here
%   brief: This function acts as the channel of the system
%   param: param: it 3 parameters: signal, t - >time, fs -> sampling
%   frequency
%   return: it returns the output of the convolution
choice = 0;
while choice == 0
    fprintf("Please choose an impulse response:\n1-Delta Function\n2-exp(-2pi*5000t)\n3-exp(-2pi*1000t)\n4-2delta(t) + delta(t-1)\n\n");
    choice = input("choice: ");
    switch (choice)
        case 1
            h = delta(t);
        case 2
            h = exp(-2 * pi * 5000 .* t);
        case 3
            h = exp(-2 * pi * 1000 .* t);
        case 4
            h = 2 .* delta(t) + 0.5 .* delta(t-1);
        otherwise
            choice = 0;
            fprintf("Invalid Input");
    end
end

if dim == 2
    Y1 = cal_output(signal(:,1), h);
    Y2 = cal_output(signal(:,2), h);
    Y = [Y1; Y2];
else
    Y = cal_output(signal, h, fs);
end
Y = Y';
t_end = length(Y)./fs;
ty = linspace(0,t_end, t_end*fs);
end