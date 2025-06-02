%Problem 2
format long;

% Problem parameters
a = 0;
b = 1;
N = 10;
h = (b - a) / N;
x = a:h:b;

% Exact solution
y_exact = @(x) exp(-x) + 2*x - 2;

% Differential equation
f = @(x, y) 2*x - y;

% Initial condition
y0 = -1;

% Initialize solutions
y_euler = zeros(1, N+1);
y_rk4 = zeros(1, N+1);
y_euler(1) = y0;
y_rk4(1) = y0;

% Euler's Method
for i = 1:N
    y_euler(i+1) = y_euler(i) + h * f(x(i), y_euler(i));
end

% Runge-Kutta 4th Order
for i = 1:N
    k1 = f(x(i), y_rk4(i));
    k2 = f(x(i) + h/2, y_rk4(i) + h/2 * k1);
    k3 = f(x(i) + h/2, y_rk4(i) + h/2 * k2);
    k4 = f(x(i) + h, y_rk4(i) + h * k3);
    y_rk4(i+1) = y_rk4(i) + (h/6)*(k1 + 2*k2 + 2*k3 + k4);
end

% Plotting
figure;
plot(x, y_exact(x), 'k-', 'LineWidth', 2); hold on;
plot(x, y_euler, 'ro--', 'LineWidth', 1.5);
plot(x, y_rk4, 'bs--', 'LineWidth', 1.5);
legend('Exact Solution', 'Euler''s Method', 'Runge-Kutta 4th Order');
xlabel('x'); ylabel('y(x)');
title('Comparison of Euler and RK4 with Exact Solution');
grid on;
