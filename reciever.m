%brief: This function acts as the reciever of the system 
%param: it takes the output of the channel after addition of noise,
%       sampling frequency
%return: it returns the final output
function filtered_output = reciever(output, f_sampling)
    OUTPUT = fftshift(fft(output));
    Ns = (length(OUTPUT)/f_sampling) * 3400;
    OUTPUT([1 : round(Ns), (length(OUTPUT) - round(Ns) + 1) : length(OUTPUT)]) = 0;
    out = real(ifft(ifftshift(OUTPUT)));
    filtered_output = out;
end
