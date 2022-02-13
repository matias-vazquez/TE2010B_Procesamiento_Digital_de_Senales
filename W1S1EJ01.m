F = 1;                    % Frecuencia
A = 1;                    % Amplitud

figure(1);

% GENERAMOS LOS VALORES DE CADA FUNCIÓN
N1 = 20;                  % Número total de muestras
t1 = [0:1/N1:1];          % Puntos en el tiempo
x1 = A*sin(2*pi*F*t1);    % Función Seno
subplot(2,2,1);
stairs(t1,x1);
title('Continuous-time, discrete-valued');
xlabel('Time'); ylabel('Amplitude');
grid on;

N2 = 20;                  % Número total de muestras
t2 = [0:1/N2:1];          % Puntos en el tiempo
x2 = A*sin(2*pi*F*t2);    % Función Seno
subplot(2,2,2);
stem(t2,x2);
title('Discrete-time, discrete-valued');
xlabel('Time'); ylabel('Amplitude');
grid on;

N3 = 200;                 % Número total de muestras
t3 = [0:1/N3:1];          % Puntos en el tiempo
x3 = A*sin(2*pi*F*t3);    % Función Seno
subplot(2,2,3);
plot(t3,x3);
title('Continuous-time, continuous-valued');
xlabel('Time'); ylabel('Amplitude');
grid on;

N4 = 21;                  % Número total de muestras
t4 = [0:1/N4:1];          % Puntos en el tiempo
x4 = A*sin(2*pi*F*t4);    % Función Seno
subplot(2,2,4);
stem(t4,x4);
title('Discrete-time, continuous-valued');
xlabel('Time'); ylabel('Amplitude');
grid on;

