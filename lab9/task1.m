clear, clc;
        
t = linspace(0,0.2);  
Fs = 100; f1 = 10;  f2 = 110; 

n = 0:1/Fs:0.2;  

% plots for 10Hz signal
subplot(321);
x1_t = sin(2*pi*f1*t); 
plot(t,x1_t); title('Analog 10Hz Signal');

subplot(323);
x1_n = sin(2*pi*f1*n);   
stem(n, x1_n); title('Digital Construction');

subplot(325);
X1 = spline(n,x1_n,t);
plot(t, X1); title('Analog Reconstruction');

% plots for 110Hz
subplot(322);
x2_t = sin(2*pi*f2*t);   
plot(t,x2_t); title('Analog 110Hz Signal');

subplot(324);
x2_n = sin(2*pi*f2*n);   
stem(n, x2_n); title('Digital Construction');

subplot(326);
X2 = spline(n,x2_n,t);
plot(t, X2); title('Analog Reconstruction');
