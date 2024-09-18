function [x] = flipadv(u, s)
    % u = input signal
    % s = number of samples to advance the signal by
    
    % Flip the signal
    u_flipped = fliplr(u);
    
    % Number of elements in the input signal
    N = length(u);
    
    % Generate index range from -N/2 to N/2
    lower_lim = -floor(N/2);
    upper_lim = floor(N/2);
    n = lower_lim:upper_lim;
    
    % Create a zero-padded signal for the advance
    x = zeros(1, N + 2 * s);
    
    % Adjust the position to insert the flipped signal in the middle
    start_idx = s + 1 + floor((length(x) - N) / 2);  % Centralize the flipped signal
    x(start_idx:start_idx + N - 1) = u_flipped;
end
