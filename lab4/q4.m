%https://www.mathworks.com/help/matlab/ref/ifft.html

clc, clear;

% First Signal (Original A)
X = [20 -4+6j -4 -4-6j]; n=[0:3];
figure(1);
x = ifft(X);
subplot(1,2,1),stem(n,real(x)), title("Signal Real Part")
subplot(1,2,2), stem(n,imag(x)), title("Signal Imaginary Part")

% Second Signal (Original B)
X = [61 -2+5j -9 -2+5j];
figure(2);
x = ifft(X);
subplot(1,2,1),stem(n,real(x)), title("Signal Real Part")
subplot(1,2,2), stem(n,imag(x)), title("Signal Imaginary Part")

% Third Signal (Original C)
X = [40 -6+j -10-2j 8-j -8+j -10+2j -6-j 60]; n = [0:7];
figure(3);
x = ifft(X);
subplot(1,2,1),stem(n,real(x)), title("Signal Real Part")
subplot(1,2,2), stem(n,imag(x)), title("Signal Imaginary Part")












