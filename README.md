# Simple-Communication-System
This repo is for the second project for Signals And Systems course (EEC 271)

## 1. Transmitter
At the first stage, which is called the transmitter. You will enter your sound file and prepare
it for the transmission over the channel.
### Requirement:
- Play your sound file through Matlab
- Plot your sound file in time domain and the frequency domain
## 2. Channel
The channel has the following impulse response. At this stage, you will need to pass your
sound message over the channel
You have 4 options for the channel impulse response.
1. Delta function
2. exp(-2pi*5000t)
3. exp(-2pi*1000t)
4. The channel has the following impulse response
Try the four different impulse responses for the channel and compare the effect of the first
three ones on the sound signal.
## 3. Noise
The program should have the ability to add noise (simply random signal) to the
output of the channel
The random signal generation is done as following
Z(t) =sigma*randn(1,length(x))
Where x is a vector represents the output of the channel
The user should enter the value of the sigma at this stage
The output will be a Gaussian distributed noise with zero mean and standard
deviation of sigma
Requirement:
- Play your sound file after adding noise
- Plot your sound file in time domain and the frequency domain
## 4. Receiver
In order to limit the effect of the noise,
1. You will construct an ideal low pass filter which has a cut off of 3400 KHz. The
frequency response of the filter as shown in figure.
2. pass the noisy sound over the ideal filter
### Requirement:
- Play the sound file after the filter
- Plot the output sound file in time domain and the frequency domain
