function [x] = flipadv(u, s)
    %{
    arguments
        u = input signal
        s = number of samples to advance the signal by    

    returns vector
%}

    % adding zero padding to make two directional signal
    x_n = [zeros(1,length(u)-1) u];
    
    % calculate the lower and upper limits for plotting
    upper_lim = length(u)-1;
    lower_lim = -1*upper_lim;
    
    % Plot the original signal
    subplot(211);
    stem([lower_lim:upper_lim],x_n, 'LineWidth', 2);
    title('Original Signal'),xlabel('Sample Index'), ylabel('Amplitude'),grid on;
       
    % Apply time reversal
    u_flipped = fliplr(x_n);

    % Apply time shift by appending s amount of zeros
    x = [u_flipped zeros(1,s)];
        
    % plot resultant signal
    subplot(212);
    stem([lower_lim - s:upper_lim],x, 'LineWidth', 2);
    title('Resultant Signal'),xlabel('Sample Index'),ylabel('Amplitude'),grid on;
end
