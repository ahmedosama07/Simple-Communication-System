function Noise = cal_noise(y)
%cal_noise Summary of this function goes here
%   brief: This function creates gaussian noise
%   param: it takes one parameter: the output before the added noise
%   return: the noise signal
val = inputdlg("sigma: ");
sigma = str2num(val{1});
Noise = sigma * randn(size(y));
end