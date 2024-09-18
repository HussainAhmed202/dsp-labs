clc;
clear;

N = -10:10;
% Create the unit step signal
unit_step = (N >= 0);

choice = input('Delay (D) or Advance (A): ', 's'); 
k = input('Shift amount: ');
if (choice == 'D')  % Delay
    shifted_step = (N >= k);
elseif (choice == 'A')  % Advance
    shifted_step = (N >= -k);
else
    disp('Wrong option. Please choose between D or A');
    return;
end

% Plot the signals
subplot(2,1,1);stem(N, unit_step, 'filled');
title('Original Signal');xlabel('Sample Index'); ylabel('Amplitude');

subplot(2,1,2); stem(N, shifted_step, 'filled');
title('Shifted Signal');xlabel('Sample Index'); ylabel('Amplitude');
