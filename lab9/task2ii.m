clear, clc;

Fs = 50000;  n = 0:99;  
Fo = 2000;  n_even = n(1:2:end); 

x_n = sin(2 * pi * Fo * (n/Fs)); 
y_n = x_n(1:2:end); 

% Plot the discrete signal
subplot(211);
stem(n, x_n)
title('x(n)'), grid on;

% Plot the discrete even signal
subplot(212);
stem(n_even, y_n)
title('y(n)'), grid on;



