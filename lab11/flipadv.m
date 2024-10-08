function [x] = flipadv(u, s)
    % Plot the original signal        
    upper_lim = length(u)-1;     % one sided signal with range [0,upper_lim]
    subplot(211);
    stem([0:upper_lim],u, 'LineWidth', 2);
    title('Original Signal'),xlabel('Sample Index'), ylabel('Amplitude'),grid on;
        
    % apply time reversal
    x = fliplr(u);
    
    % signal flipped to negative axis so new signal range [lower_lim,0]
    lower_lim = -1 * upper_lim;  
   
    % apply time shift 
    x = [x zeros(1,s)];

    lower_lim = lower_lim - s; % update the lower limit  
        
    % Plot the transformed signal
    subplot(212);
    stem([lower_lim:0],x, 'LineWidth', 2);
    title('Transformed Signal'),xlabel('Sample Index'), ylabel('Amplitude'),grid on;
end
