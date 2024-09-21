t = 0:0.01:2;  

% Generate a square wave with amplitude ranging from -5 to 5
amp = 5; 
square_wave = amp * square(2 * pi * t);  

flipped_wave = fliplr(square_wave);  % Time-reversed square wave

% Plot the original square wave
subplot(2,1,1);  
plot(t, square_wave, 'LineWidth', 2);
title('Original Square Wave'), xlabel('Time'), ylabel('Amplitude');
axis([0 2 -6 6]);
grid on;

% Plot the flipped square wave
subplot(2,1,2);  
plot(t, flipped_wave, 'LineWidth', 2);
title('Flipped Square Wave'), xlabel('Time'), ylabel('Amplitude');
axis([0 2 -6 6]);
grid on;
