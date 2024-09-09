clc, clear
t = [0:0.01:2];
f = 0.5; % 0.5Hz
w = 2 * pi * f;
subplot(511), a=2;
plot(t,cos(a*w*t)), title('Even Harmonic at 2wt'), xlabel('Time'), ylabel('Amplitude');
subplot(512), a=4;
plot(t,cos(a*w*t)),title('Even Harmonic at 4wt'), xlabel('Time'), ylabel('Amplitude');
subplot(513), a=6;
plot(t,cos(a*w*t)), title('Even Harmonic at 6wt'), xlabel('Time'), ylabel('Amplitude');
subplot(514), a=3;
plot(t,cos(a*w*t)), title('Odd Harmonic at 3wt'), xlabel('Time'), ylabel('Amplitude');
subplot(515), a=5;
plot(t,cos(a*w*t)), title('Odd Harmonic at 5wt'), xlabel('Time'), ylabel('Amplitude');

