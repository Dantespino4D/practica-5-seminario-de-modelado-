R1 = 1e3;
R2 = 1e3;
R3 = 10e3;
R4 = 15e3;
C1 = 0.1e-6;
C2 = 0.1e-6;
Vin = 1;

x_i = [1; 0];
tspan = [0, 0.003];

[t, x] = ode45(@(t, x) sistema(t, x, R1, R2, R3, R4, C1, C2, Vin), tspan, x_i);

plot(t, x(:, 1), 'LineWidth', 1.5);
grid on;
xlabel('Tiempo (s)');
ylabel('Vo (V)');
title('Respuesta del sistema');