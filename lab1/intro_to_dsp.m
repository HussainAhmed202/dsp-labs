clc, clear
t= [0:0.001:5];

freq=2;
subplot(221), f = sin(2*pi*freq*t);
stem(t,f), title('Sine Wave at 2Hz frequency'), xlabel('Time'),ylabel('Amplitude');

freq=5;
subplot(222), f = sin(2*pi*freq*t);
stem(t,f),title('Sine Wave at 5Hz frequency'), xlabel('Time'),ylabel('Amplitude');

freq=10;
subplot(223), f = sin(2*pi*freq*t);
stem(t,f), title('Sine Wave at 10Hz frequency'), xlabel('Time'),ylabel('Amplitude');

freq=20;
subplot(224), f = sin(2*pi*freq*t);
stem(t,f), title('Sine Wave at 20Hz frequency'), xlabel('Time'),ylabel('Amplitude')
