clc, clear;

w = linspace(-20,20,200);

% transfer function
H = tf([1,1],[1,-0.9,0.81],ts=-1)

% extract num and den
[num,den] = tfdata(H);

% frequency response
[h,w] = freqz(num{1},den{1},w);

plot(w,h)



