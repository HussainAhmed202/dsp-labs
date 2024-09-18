clear, clc;

Fs = 5000;  n = 0:99;   t = linspace(0, (n(end)/Fs), 1000);  
frequencies = [500, 2000, 3000, 4500];  
for i = 1:length(frequencies)
    Fo = frequencies(i);  
    % Continuous-time signal 
    x_cont = sin(2 * pi * Fo * t);  
    % Sampled discrete-time signal
    x_n = sin(2 * pi * Fo * (n/Fs)); 
    % Reconstruct the signal using spline interpolation
    X = spline(n, x_n, linspace(0, n(end), 1000));  
    
    % Plot original continuous signal
    subplot(3, 4, i);
    plot(t, x_cont)
    title(['CT F_o = ', num2str(Fo/1000), ' kHz']);
    xlabel('Time (s)'), ylabel('x(t)'), grid on;
    
    % Plot the discrete signal
    subplot(3, 4, i + 4);
    stem(n, x_n)
    title(['DT F_o = ', num2str(Fo/1000), ' kHz']);
    xlabel('Sample index (n)'), ylabel('x(n)'), grid on;
    
    % Plot the reconstructed signal
    subplot(3, 4, i + 8);
    plot(t, X)
    title(['Reconstructed F_o = ', num2str(Fo/1000), ' kHz']);
    xlabel('Time (s)'), ylabel('Reconstructed x(t)'), grid on;
end
