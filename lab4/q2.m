% https://www.youtube.com/watch?v=EsJGuI7e_ZQ
% https://www.mathworks.com/discovery/fft.html


clc, clear;
n = [0:7]; x = [4,-3,2,0,-1,-2,3,1];
subplot(421), stem(n,x), title("Original A")
X = fft(x)
subplot(422), stem(n,abs(X)), title("FFT Transform")

clear;
n = [0:7]; x = [1,1,1,1,1,1,1,1];
subplot(423), stem(n,x), title("Original B")
X = fft(x)
subplot(424), stem(n,abs(X)), title("FFT Transform")

clear;
n = [0:3]; x = [3,0,2,9];
subplot(425), stem(n,x), title("Original C")
X = fft(x)
subplot(426), stem(n,abs(X)), title("FFT Transform")

clear;
n = [0:3]; x = [9,12,6,2];
subplot(427), stem(n,x), title("Original D")
X = fft(x)
subplot(428), stem(n,abs(X)), title("FFT Transform")

