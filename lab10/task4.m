clc;
clear;

% Create audiorecorder object
Fs = 32000; nBits = 8; nChannels = 1;       
recObj = audiorecorder(Fs, nBits, nChannels);

% Record audio
duration = 5;
disp('Start speaking.');
recordblocking(recObj, duration);
disp('Recording finished.');

audioData = getaudiodata(recObj);
t_original = linspace(0, length(audioData)/Fs, length(audioData));

% Plot the original signal
subplot(3, 2, 1); plot(t_original, audioData);
title('Original Signal (32 KHz)');xlabel('Time (s)');ylabel('Amplitude');

sampleRates = [16000, 8000, 4000, 2000, 1000];
for i = 1:length(sampleRates)
    newFs = sampleRates(i);
    
    % Resample the audio signal
    audioData_resampled = resample(audioData, newFs, Fs);
    
    t_resampled = linspace(0, length(audioData_resampled)/newFs, length(audioData_resampled));
    
    subplot(3, 2, i+1);
    plot(t_resampled, audioData_resampled);
    title(['Resampled Signal (' num2str(newFs/1000) ' kHz)']); xlabel('Time (s)'); ylabel('Amplitude');
   
    disp(['Playing resampled sound at ' num2str(newFs) ' Hz']);
    sound(audioData_resampled, newFs);
    pause(duration + 1);
end
