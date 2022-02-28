F = 1;                  % Frecuencia
A = 1;                  % Amplitud
N = 8;                  % Número total de muestras
t = [0:1/N:1];          % Puntos en el tiempo
x = A*sin(2*pi*F*t);    % Función Seno

figure(1); stem(t,x);
title('A\cdotSin(2\piFt), F = 1 Hz, A = 1, N = 8, t = 1 seg.');
xlabel('Time'); ylabel('Amplitude');

% CALCULO DE SERIE DE FOURIER PARA TODOS LOS FREQUENCY BINS
X = zeros(1,N);
for k = 0:N-1 
    for n = 0:N-1
        X(k+1) = X(k+1) + x(n+1) * exp((-1i*2*pi*k*n)/N);
    end
end

% Calcular single-sided Fourier coefficients:
X_ss = 2*X(1:4);

mag_X = abs(X_ss(2)/N);       % Magnitude
theta_X = angle(X_ss(2));   % Phase (radians)

fprintf('The magnitude is %d and the phase is %d [rad]\n', mag_X, theta_X);
