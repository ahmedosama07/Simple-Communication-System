clear all;
clc;
%% transmitter
[x, fs, t] = transmitter('dawn of faith.mpeg');
pause(25);
[Xmg, Xphase, f_vec] = freq_domain(x, fs);
figure(1);
subplot(3,1,1);
plot(t,x);
title('Signal in time domain');
subplot(3,1,2);
plot(f_vec,Xmg);
title('Signal Magnitude in frequency domain');
subplot(3,1,3);
plot(f_vec,Xphase);
title('Signal Phase in frequency domain');

%% channel
[y_conv, t_conv] = channel(x, t, fs, size(x, 2));
[Ymg, Yphase, f_vec] = freq_domain(y_conv(1:length(x), :), fs);
figure(2);
subplot(3,1,1);
plot(t_conv, y_conv(1:length(x)));
title('Signal in time domain after applying system');
subplot(3,1,2);
plot(f_vec, Ymg);
title('Signal Magnitude in freq. domain after applying system ');
subplot(3,1,3);
plot(f_vec, Yphase);
title('Signal phase in freq. domain after applying system ');
%%
Y = y_conv;
N = cal_noise(Y);
output = Y + N;
sound(output(1:length(x), :),fs);
audiowrite('noise.wav', N, fs);
[outMg, outPhase, f_vec] = freq_domain(output(1:length(x), :), fs);
pause(25);
figure(3);
subplot(2,1,1);
plot(t,output(1:length(x), :));
title('sound file after adding noise in time domain');
subplot(2,1,2);
plot(f_vec,outMg);
title('sound file after adding noise in frequency domain');
%% Reciever
final = reciever(output, fs);
final = final(1:length(x), :);
sound(final, fs);
[finalMg, finalPhase, f_vec] = freq_domain(final, fs);
figure(4);
subplot(2,1,1);
plot(t,final);
title('sound file at receiver in time domain');
subplot(2,1,2);
plot(f_vec,finalMg);
title('sound file at receiver in frequency domain');
audiowrite('out.wav', final, fs);