function [Xmg, Xphase, f_vec] = freq_domain(signal, f_sampling)
%freq_domain Summary of this function goes here
%brief: this function transform the signal to the frequency domain using
%       fourier transform and plots the signal in frequency domain
%param: it takes 2 parameters: f_sampling -> sampling frequency
%                              signal     -> signal to be plotted
%return : Xmg       ->    magnitude
%         Xphase    ->    phase
X_freq = fftshift(fft(signal));


N = length(signal);
Xmg = abs(X_freq);
Xphase = angle(X_freq);

f_vec = linspace(-f_sampling/2, f_sampling/2, N);
end