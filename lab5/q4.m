%clc, clear;

n = 200;
w = linspace(-20,20,n);
Y = [0 1 1];
X = [1 -0.9 0.81];
a = roots(Y);
b = roots(X);

freqz(X,Y,w);
