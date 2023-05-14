%brief: This function acts as the tansmitter of the system 
%param: it takes one parameter: the output before the added noise
%return: the noise signal
function Noise = cal_noise(y)
    fprintf("Please input the 'sigma' of the noise signal\n");
    sigma = input("Sigma = ");
    Noise = sigma * randn(size(y));
end