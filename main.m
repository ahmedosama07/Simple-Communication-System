clear all;
clc;
%% transmitter
[x, fs, t] = transmitter('violin.mp3');
[Xmg, Xphase, f_vec] = freq_domain(x, fs);

figure(1)
subplot(3,1,1)
plot(t,x)
title('Signal in time domain')
subplot(3,1,2)
plot(f_vec,Xmg)
title('Signal Magnitude in frequency domain')
subplot(3,1,3)
plot(f_vec,Xphase)
title('Signal Phase in frequency domain')
%% channel
[y, t] = channel(x, t, fs);
N = cal_noise(y);
output = y + N;
%%
Y_f = fftshift(fft(output));
Yfmg = abs(Y_f);
f_vec = linspace(-fs/2, fs/2, length(Y_f));
plot(f_vec, Yfmg);
%% Reciever
final = reciever(output, fs);
sound(final, fs);