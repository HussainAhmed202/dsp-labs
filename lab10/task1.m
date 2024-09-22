clc;
clear;
               
recordTime = 5;     

% Create an audio recorder object
recObj = audiorecorder;

% Record your voice
disp('Start speaking...');
recordblocking(recObj, recordTime); 
disp('Recording finished.');

% Get audio data
audioData = getaudiodata(recObj);

% Play the original sound
disp('Playing the original sound:');
sound(audioData);
pause(recordTime + 1);  % Wait for playback to finish

subplot(2,1,1); plot(audioData); title('Original Sound'); xlabel('Sample Index'); ylabel('Amplitude');

% Reverse the audio data
reversedAudio = flipud(audioData);

% Play the reversed sound
disp('Playing the reversed sound:');
sound(reversedAudio);

subplot(2,1,2); plot(reversedAudio); title('Reversed Sound'); xlabel('Sample Index'); ylabel('Amplitude');
