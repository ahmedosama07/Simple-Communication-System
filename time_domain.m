%brief: this function calculates the time of the signal and plot the signal in
%       time domain
%param: it takes 3 parameters: t_sec      -> duration in seconds
%                              f_sampling -> sampling frequency
%                              signal     -> signal to be plotted
%return : void
function t = time_domain(t_sec, f_sampling)
    t = linspace(0, t_sec, t_sec * f_sampling);
end