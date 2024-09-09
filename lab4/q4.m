%https://www.mathworks.com/help/matlab/ref/ifft.html

clc, clear;
n = [0:3];
X = [20, -4+6j, -4, -4-6j]
subplot(321), stem(n,abs(X)), title("FFT i")
x = ifft(X)
subplot(322), stem(n,x), title("Reconstructed")

clear;
n = [0:3];
X = [61 -2+5i -9 -2+5i]
subplot(323), stem(n,abs(X)), title("FFT ii")
x = ifft(X)
subplot(324), stem(n,x), title("Reconstructed")

clear;
n = [0:7];
X = [40 -6+i -10-2i 8-i -8+i -10+2i -6-i 60]
subplot(325), stem(n,abs(X)), title("FFT iii")
x = ifft(X)
subplot(326), stem(n,x), title("Reconstructed")

