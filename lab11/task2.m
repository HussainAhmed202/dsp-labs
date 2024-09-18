clc;
clear;

N = -10:10;
% Create the unit impulse signal
unit_impulse = (N == 0);

choice = input('Delay (D) or Advance (A): ', 's'); 
k = input('Shift amount: ');
if (choice == 'D')  % Delay
    shifted_impulse = (N == k);
elseif (choice == 'A')  % Advance
    shifted_impulse = (N == -k);
else
    disp('Wrong option. Please choose between D or A');
    return;
end

% Plot the signals
subplot(2,1,1);stem(N, unit_impulse, 'filled');
title('Original Signal');xlabel('Sample Index'); ylabel('Amplitude');

subplot(2,1,2); stem(N, shifted_impulse, 'filled');
title('Shifted Signal');xlabel('Sample Index'); ylabel('Amplitude');
