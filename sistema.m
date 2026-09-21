function dxdt = sistema(t, x, R1, R2, R3, R4, C1, C2, Vin)
dxdt = zeros(2, 1);
K = 1 + (R4 / R3);
a1 = (1 / (R1 * C2)) + (1 / (R2 * C2)) + ((1 - K) / (R2 * C1));
a0 = 1 / (R1 * R2 * C1 * C2);
b0 = K / (R1 * R2 * C1 * C2);
dxdt(1) = x(2);
dxdt(2) = b0 * Vin - a1 * x(2) - a0 * x(1);
end