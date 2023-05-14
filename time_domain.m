function t = time_domain(t_sec, f_sampling)
%time_domain Summary of this function goes here
%   brief: This function calculates time
%   param: it takes 2 parameters: t_sec      -> duration in seconds
%                                 f_sampling -> sampling frequency
%   return: it returns time
t = linspace(0, t_sec, t_sec * f_sampling);
end