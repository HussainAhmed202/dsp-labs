function s = mysine(t)
    s = sin(2*pi*t);
    stem(t,s), title('Sine Wave with argument t'), xlabel('Time'),ylabel('Amplitude');
end