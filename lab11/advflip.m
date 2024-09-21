function [x] = advflip(u, s)
    % Plot the original signal        
    upper_lim = length(u)-1;     % one sided signal with range [0,upper_lim]
    subplot(211);
    stem([0:upper_lim],u, 'LineWidth', 2);
    title('Original Signal'),xlabel('Sample Index'), ylabel('Amplitude'),grid on;
        
    % apply time shift 
    x = [u zeros(1,s)];
    
    % update the lower limit  and upper limit
    lower_lim = 0 - s; 
    
    % apply time reversal
    x = fliplr(u);
    
    % signal axis flipped 
    new_lower_lim = -1 * (upper_lim - s);
    new_upper_lim = -1 * lower_lim ;
    
    subplot(212);
    stem([new_lower_lim:new_upper_lim],x, 'LineWidth', 2);
    title('Transformed Signal'),xlabel('Sample Index'), ylabel('Amplitude'),grid on;
end
