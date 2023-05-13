clear all;
clc;
%% transmitter
[x fs t] = transmitter('sigma.mp3');
%% channel
y = channel(x, t);
N = cal_noise(y);
output = y + N;
%%
Y_f = fftshift(fft(output));
f_vec = linspace(-fs/2, fs/2, length(Y_f));
plot(f_vec, Y_f);
%% Reciever
final = reciever(output, fs);
sound(final, fs);