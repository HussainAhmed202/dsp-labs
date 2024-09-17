clc, clear;

% transfer function
H = tf([1,1],[1,-0.9,0.81],ts=-1)

% extract num and den
[num,den] = tfdata(H);

% zeros is the vector when the num of tf = 0
zeros = roots(num{1})

% pole is the vector when the den of tf = 0
poles = roots(den{1})

pzmap(H)

