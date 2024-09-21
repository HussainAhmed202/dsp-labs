% https://www.youtube.com/watch?v=EsJGuI7e_ZQ
% https://www.mathworks.com/discovery/fft.html
% https://www.youtube.com/watch?v=htCj9exbGo0&t=326s


clc, clear;

% First Signal (Original A)
x = [4,-3,2,0,-1,-2,3,1]; n=[0:7];
figure(1);
subplot(1,3,1), stem(n,x), title("Original A")
X = fft(x);
subplot(1,3,2), stem(n,real(X)), title("FFT Transform Real Part")
subplot(1,3,3), stem(n,imag(X)), title("FFT Transform Imaginary Part")

% Second Signal (Original B)
x = [1,1,1,1,1,1,1,1];
figure(2);
subplot(1,3,1), stem(n,x), title("Original B")
X = fft(x);
subplot(1,3,2), stem(n,real(X)), title("FFT Transform Real Part")
subplot(1,3,3), stem(n,imag(X)), title("FFT Transform Imaginary Part")

% Third Signal (Original C)
x = [3,0,2,9]; n = [0:3];
figure(3);
subplot(1,3,1), stem(n,x), title("Original C")
X = fft(x);
subplot(1,3,2), stem(n,real(X)), title("FFT Transform Real Part")
subplot(1,3,3), stem(n,imag(X)), title("FFT Transform Imaginary Part")

% Fourth Signal (Original D)
x = [9,12,6,2];
figure(4);
subplot(1,3,1), stem(n,x), title("Original D")
X = fft(x);
subplot(1,3,2), stem(n,real(X)), title("FFT Transform Real Part")
subplot(1,3,3), stem(n,imag(X)), title("FFT Transform Imaginary Part")























