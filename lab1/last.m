n_elements = 100;
samples_per_cycle = 10;
for i = 1:n_elements
    y(i) = sin(2 * pi * (i - 1) / samples_per_cycle);
end
stem(y), title('Digitized Unit Sine Wave'), xlabel('Sample Index'), ylabel('Amplitude'),grid on;
