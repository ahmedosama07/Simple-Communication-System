%brief: This function acts as the tansmitter of the system 
%param: it 2 parameters: signal, t->time
%return: it the output of the convolution
function [Y, t] = channel(signal, t, fs)
    fprintf("Please choose an impulse response:\n1-Delta Function\n2-exp(-2pi*5000t)\n3-exp(-2pi*1000t)\n4-2delta(t) + delta(t-1)\n\n");
    choice = input("choice: ");
    switch (choice)
        case 1
            h = (t == 0);
        case 2
            h = exp(-2 * pi * 5000 .* t);
        case 3
            h = exp(-2 * pi * 1000 .* t);
        case 4
            h = [2 zeros(1,1*fs -2) 1];
        otherwise
            fprintf("Invalid Input");
    end
    [Y, t] = cal_output(signal, h, fs);
end