clc;
clear;


%{

Uncomment to create the sunday.wav file

% Recording parameters
Fs = 44100;        % Sample rate (44.1 KHz)
nBits = 16;        % 16-bit resolution
nChannels = 1;     % Mono channel
duration = 10;      % Duration of recording in seconds

% Create audiorecorder object
recObj = audiorecorder(Fs, nBits, nChannels);

% Start recording
disp('Start speaking. Recording audio for 10 seconds...');
recordblocking(recObj, duration);
disp('Recording finished.');

% Get the audio data
audioData = getaudiodata(recObj);

% Play the recorded audio
disp('Playing the recorded sound...');
sound(audioData, Fs);

% Save the recorded audio to a .wav file
filename = 'sunday.wav';
audiowrite(filename, audioData, Fs);

disp(['Audio saved as ', filename]);

%}


[originalAudio, Fs] = audioread("sunday.wav");
newFs = 11025;
% Resample the audio signal to the new sample rate
resampledAudio = resample(originalAudio, newFs, Fs);

t_original = linspace(0, length(originalAudio)/Fs, length(originalAudio));
t_resampled = linspace(0, length(resampledAudio)/newFs, length(resampledAudio));

minLength = min(length(originalAudio), length(resampledAudio));
absDifference = abs(originalAudio(1:minLength) - resampledAudio(1:minLength));

% Plot the original audio signal
subplot(3, 1, 1);
plot(t_original, originalAudio);
title('Original Audio Signal'); xlabel('Time (s)');ylabel('Amplitude');

% Plot the resampled audio signal
subplot(3, 1, 2);
plot(t_resampled, resampledAudio);
title(['Resampled Audio Signal (', num2str(newFs), ' Hz)']); xlabel('Time (s)');ylabel('Amplitude');

% Plot the absolute difference between the original and resampled signals
subplot(3, 1, 3);
plot(t_original(1:minLength), absDifference);
title('Absolute Difference Between Original and Resampled Audio');xlabel('Time (s)'); ylabel('Amplitude Difference');
