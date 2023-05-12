clear all;
clc;
%% transmitter
[x fs t] = transmitter('sigma.mp3');
%% channel
y = channel(x, t);
N = cal_noise(y);
output = y + N;