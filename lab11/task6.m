t = 0:0.01:1; 

% Plot original triangular wave
tri_wave = sawtooth(2 * pi * t, 0.5);  
subplot(3,1,1);
plot(t, tri_wave, 'LineWidth', 2);
title('Original Triangular Wave'), xlabel('Time'), ylabel('Amplitude');
grid on;

% Compress by a factor of 2
t_compressed = 2 * t;  
tri_wave = sawtooth(2 * pi * t_compressed, 0.5);  % Compress wave
subplot(3,1,2);
plot(t, tri_wave, 'LineWidth', 2);
title('Compressed Triangular Wave'), xlabel('Time'), ylabel('Amplitude');
grid on;

% Dilate by a factor of 2
t_dilated = 0.5 * t;  
tri_wave = sawtooth(2 * pi * t_dilated, 0.5);  % Dilate wave
subplot(3,1,3);
plot(t, tri_wave, 'LineWidth', 2);
title('Dilated Triangular Wave'), xlabel('Time'), ylabel('Amplitude');
grid on;
