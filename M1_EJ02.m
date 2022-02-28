% GENERAMOS LOS VECTORES INICIALES
h  = [0,0,1,1,1,0,0];   % Respuesta al impulso
x  = [0,0,0.5,2,0,0,0]; % Señal de entrada
h2 = zeros(2,7);        % Vector auxiliar 

y  = zeros(1,7);        

% CALCULAMOS LAS RESPUESTAS AL IMPULSO DE CADA MUESTRA EN X[N]
h2(1,:) = h.*x(3);              % Respuesta al impulso en x(3) en fila 1 
h2(2,:) = circshift(h,1).*x(4); % Respuesta al impulso en x(4) en fila 2 

% CALCULAMOS LA SUMA DE LAS RESPUESTAS AL IMPULSO 
y  = sum(h2,1);         % Suma de respuestas al impulso (2 filas)

% GRAFICAMOS LA RESPUESTA TOTAL Y[N]
figure(1);
stem(-2:4,y);
title('Respuesta del Sistema a x[n]');
ylabel('Amplitud [u.a.]');
xlabel('Tiempo [n]');
grid on;
