clear all;
clc;

nx = [-3:1:3];
nh = [-1:1:4];

x = [3, 11, 7, 0, -1, 4, 2]; 
h = [2, 3, 0, -5, 2, 1];

[y,ny] = conv_m(x, nx, h, nh);

figure(1);
subplot(2,2,1);
stem(nx,x);
title('Input sequence, x[n]'); xlabel('n'); ylabel('x[n]');

subplot(2,2,3);
stem(nh,h);
title('Impulse Response, h[n]'); xlabel('n'); ylabel('h[n]');

subplot(2,2,2);
stem(ny,y);
title('Output sequence, y[n]'); xlabel('n'); ylabel('y[n]');