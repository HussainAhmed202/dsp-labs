clc,clear;

% uncomment if you want to create the hello.wav fle
%{
fs = 44100; % Sample rate (Hz)
nBits = 16; % Bit depth
nChannels = 1; % Mono recording
duration = 10; % Duration in seconds

% Create audiorecorder object
recObj = audiorecorder(fs, nBits, nChannels);

% Start recording
disp('Start speaking.');
recordblocking(recObj, duration);
disp('Recording finished.');

% Get the audio data
audioData = getaudiodata(recObj);

% Save as a .wav file
filename = 'hello.wav';
audiowrite(filename, audioData, fs);

disp(['Audio saved as ', filename]);

%}


info = audioinfo("hello.wav");

fprintf('Information of Sound file "%s"\n', info.Filename);
fprintf('Sample Points = %d samples\n', info.TotalSamples);
fprintf('Sampling Rate = %d samples/sec\n', info.SampleRate);
fprintf('Bit Resolution = %d bits/sample\n', info.BitsPerSample);
fprintf('Time Duration = %.0f seconds\n', info.Duration);

