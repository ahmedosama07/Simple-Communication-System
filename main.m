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
sound(output,fs);
pause(25);
%%
[Ymg, Yphase, f_vec] = freq_domain(output, fs);
figure(2);
plot(f_vec, Ymg);
%% Reciever
final = reciever(output, fs);
figure(3);
plot(t, final);
sound(final, fs);