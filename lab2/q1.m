clc, clear;

t = linspace(0,1);
A = 2; % amplitude
phi=0; % phase shift

F = input("Enter frequency ")

X = A*cos(2*pi*F*t + phi);
plot(t,X), title([num2str(F) 'Hz ' 'Continuous-Time Sinusoid']), xlabel("time (s)"), ylabel("amplitude");

