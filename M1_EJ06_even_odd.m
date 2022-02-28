n = [0:10]; x = stepseq(0,0,10)-stepseq(10,0,10);
[xe,xo,m] = evenodd(x,n);
subplot(2,1,1); stem(n,x); title('Rectangular pulse')
xlabel('n'); ylabel('x(n)'); axis([-10,10,0,1.2])

x = [3, 11, 7, 0, -1, 4, 2]; 
h = [2, 3, 0, -5, 2, 1];

b = [1]; a = [1,-0.9];
n = -5:50; x = stepseq(0,-5,50) - stepseq(10,-5,50);
y = filter(b,a,x);
subplot(2,1,2); stem(n,y); title('Output sequence')
xlabel('n'); ylabel('y(n)'); axis([-5,50,-0.5,8])