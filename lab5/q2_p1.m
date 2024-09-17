clc, clear;

w = linspace(-20,20,200);

% transfer function
H = tf([1,1],[1,-0.9,0.81],-1)

% extract num and den
[num,den] = tfdata(H);

% frequency response
h = freqz(num{1},den{1},w);

% magnitude response
amp_res = db(abs(h))
subplot(211), plot(w,amp_res), ylabel("Magnitude (dB)")

% phase response
ph_res = rad2deg(phase(h))
subplot(212), plot(w,ph_res), ylabel("Phase (degree)")







