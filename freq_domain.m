%brief: this function transform the signal to the frequency domain using
%       fourier transform and plots the signal in frequency domain
%param: it takes 2 parameters: f_sampling -> sampling frequency
%                              signal     -> signal to be plotted
%return : void
function freq_domain(f_sampling, signal)
    X_freq = fftshift(fft(signal));
    f_vec = linspace(-f_sampling/2, f_sampling/2, length(X_freq));
    figure;
    plot(f_vec, real(X_freq));
    title('Signal in Frequency Domain');
end