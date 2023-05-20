function [Y, ty] = channel(signal, t, fs, dim)
%channel Summary of this function goes here
%   brief: This function acts as the channel of the system
%   param: param: it 3 parameters: signal, t - >time, fs -> sampling
%   frequency
%   return: it returns the output of the convolution
formats = struct('type', {}, 'style', {}, 'items', {}, 'format', {}, 'limits', {}, 'size', {});
formats(1,1).type   = 'list';
formats(1,1).style = 'popupmenu';
formats(1,1).items  = {'1. Delta Function', '2. exp(-2pi*5000t)', '3-exp(-2pi*1000t)', '4-2delta(t) + delta(t-1)'};

value = inputsdlg('Impulse response: ', 'Channel', formats);
choice = value{1};
switch (choice)
    case 1
        h = (t == 0);
    case 2
        h = exp(-2 * pi * 5000 .* t);
    case 3
        h = exp(-2 * pi * 1000 .* t);
    case 4
        h = (2 .* (t == 0)) + 0.5 .* (t == 1);
end


if dim == 2
    Y1 = cal_output(signal(:,1), h);
    Y2 = cal_output(signal(:,2), h);
    Y = [Y1; Y2];
else
    Y = cal_output(signal, h);
end
Y = Y';
t_end = length(Y)./fs;
ty = linspace(0,t_end, t_end*fs);
end