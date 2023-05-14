clear all;
clc;
%% transmitter
[x, fs, t] = transmitter('violin.mp3');
[Xmg, Xphase, f_vec] = freq_domain(x, fs);
pause(25);
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
[y_conv, t_conv] = channel(x, t, fs);
[Ymg, Yphase, f_vec] = freq_domain(y_conv, fs);
figure(2);
subplot(3,1,1)
plot(t_conv, y_conv)
title('Signal in time domain after applying system')
subplot(3,1,2)
plot(f_vec, Ymg)
title('Signal Magnitude in freq. domain after applying system ')
subplot(3,1,3)
plot(f_vec, Yphase)
title('Signal phase in freq. domain after applying system ')
%%
Y = y_conv(1:length(x));
N = cal_noise(Y);
output = Y + N;
sound(output,fs);
audiowrite('noise.wav', N, fs);
[outMg, outPhase, f_vec] = freq_domain(output, fs);
pause(25);
figure(3)
subplot(2,1,1)
plot(t,output)
title('sound file after adding noise in time domain')
subplot(2,1,2)
plot(f_vec,outMg)
title('sound file after adding noise in frequency domain')
%% Reciever
final = reciever(output, fs);
sound(final, fs);
[finalMg, finalPhase, f_vec] = freq_domain(output, fs);
figure(4)
subplot(2,1,1)
plot(t,final)
title('sound file at receiver in time domain')
subplot(2,1,2)
plot(f_vec,finalMg)
title('sound file at receiver in frequency domain')
audiowrite('out.wav', final, fs);