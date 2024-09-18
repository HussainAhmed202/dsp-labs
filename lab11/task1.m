clc,clear;

N = -10:10; k = 5;
unit_impulse = (N==0);
delayed_impulse = (N==k);

% Plot the signals
subplot(2,1,1);
stem(N,unit_impulse, 'filled');
title('Original Signal');
xlabel('Sample Index');
ylabel('Amplitude');

subplot(2,1,2);
stem(N,delayed_impulse, 'filled');
title('Delayed Signal');
xlabel('Sample Index');
ylabel('Amplitude');

