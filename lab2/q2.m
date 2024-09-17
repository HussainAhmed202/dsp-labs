clc, clear;

t = linspace(0,1);
A = 2; % amplitude
phi=0; % phase shift

F = input("Enter frequency ")

X = A*cos(2*pi*F*t + phi);
plot(t,X), title([num2str(F) 'Hz ' 'Continuous-Time Sinusoid']), xlabel("time (s)"), ylabel("amplitude");



fs = input("Enter sampling frequency ");
while fs >= 2*f
    disp('Error: fs must be less than 2*f.');
    fs = input('Enter the value of fs again: ');
end

t = n * 1/fs;

n = linspace(0,1,1/fs);
Y = sin(2*pi*fs*n);
subplot(2,1,1), plot(t,Y), title("Continuous-time Sinusoid"), xlabel("time (s)"), ylabel("amplitude")


