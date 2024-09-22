clc;
clear;

Fs = 44100; nBits = 16; nChannels = 1; duration = 3; 

% Create audiorecorder object
recObj = audiorecorder(Fs, nBits, nChannels);

% Start recording
disp('Start speaking.');
recordblocking(recObj, duration);
disp('Recording finished.');

% Get the audio data
audioData = getaudiodata(recObj);

% Time vector for plotting
t = linspace(0, length(audioData)/Fs, length(audioData));

% Original sound
disp("Playing original sound");
sound(audioData, Fs)
pause(5);  

% Negative signal
y_neg = -1 * audioData;
disp("Playing negative signal sound");
sound(y_neg, Fs)
pause(5);  

% Time-axis reversed signal
y_rev = flipud(audioData);
disp("Playing time axis reversed sound");
sound(y_rev, Fs)
pause(5);  

% Signal multiplied by 10
y_mult10 = 10 * audioData;
disp("Playing 10* original signal sound");
sound(y_mult10, Fs)
pause(5);  

% Square root of absolute signal
y_sqrt = sqrt(abs(audioData));
disp("Playing square root of each sample sound");
sound(y_sqrt, Fs)
pause(5);  

% Signal squared
y_squared = audioData .^ 2;
disp("Playing squared signal sound");
sound(y_squared, Fs)
pause(5);  

% Create figure for subplots after playback
figure;

% Plot Original signal
subplot(3, 2, 1);
plot(t, audioData);
title('Original Signal');
xlabel('Time (s)');
ylabel('Amplitude');

% Plot Negative signal
subplot(3, 2, 2);
plot(t, y_neg);
title('Negative Signal');
xlabel('Time (s)');
ylabel('Amplitude');

% Plot Reversed signal
subplot(3, 2, 3);
plot(t, y_rev);
title('Reversed Signal');
xlabel('Time (s)');
ylabel('Amplitude');

% Plot Signal multiplied by 10
subplot(3, 2, 4);
plot(t, y_mult10);
title('Signal multiplied by 10');
xlabel('Time (s)');
ylabel('Amplitude');

% Plot Square root of absolute signal
subplot(3, 2, 5);
plot(t, y_sqrt);
title('Square Root of Each Sample');
xlabel('Time (s)');
ylabel('Amplitude');

% Plot Squared signal
subplot(3, 2, 6);
plot(t, y_squared);
title('Squared Signal');
xlabel('Time (s)');
ylabel('Amplitude');
