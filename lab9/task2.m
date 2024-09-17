clear, clc;
        
t = linspace(0,5);  
Fs = 5000;
fo = 0.5;
n = 0:1/Fs:99;  

x1_t = sin(2*pi*fo*t); 
plot(t,x1_t); title('Analog 0.5Hz Signal');

x1_n = sin(2*pi*(fo/Fs)*t); 



