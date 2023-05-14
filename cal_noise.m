function Noise = cal_noise(y)
%cal_noise Summary of this function goes here
%   brief: This function creates gaussian noise
%   param: it takes one parameter: the output before the added noise
%   return: the noise signal
fprintf("Please input the 'sigma' of the noise signal\n");
sigma = input("Sigma = ");
Noise = sigma * randn(size(y));
end