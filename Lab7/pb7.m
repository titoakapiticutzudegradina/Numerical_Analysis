%Problem 1
x = [1 2 3 4 5 6 7];                % Time
y = [13 15 20 14 15 13 10];        % Temperature

% Number of points
n = length(x);

% Compute sums
Sx = sum(x);
Sy = sum(y);
Sxx = sum(x.^2);
Sxy = sum(x .* y);

% Normal equations
A = [Sxx, Sx; Sx, n];
B = [Sxy; Sy];

% Solve for [a; b]
coeffs = A \ B;
a = coeffs(1);
b = coeffs(2);

% Predict temperature at 8:00
t_8 = 8;
temp_8 = a * t_8 + b;

% Compute least squares error E(a,b)
fitted_y = a * x + b;
E = sum((y - fitted_y).^2);

% Display results
fprintf('Least squares line: f(x) = %.4fx + %.4f\n', a, b);
fprintf('Predicted temperature at 8:00 = %.2f degrees\n', temp_8);
fprintf('Minimum error E(a,b) = %.4f\n', E);

% Plot
figure;
plot(x, y, 'ro', 'MarkerSize', 8, 'DisplayName', 'Data Points');
hold on;
x_fit = linspace(1, 8, 100);
y_fit = a * x_fit + b;
plot(x_fit, y_fit, 'b-', 'LineWidth', 2, 'DisplayName', 'Least Squares Fit');
xlabel('Time (Hours)');
ylabel('Temperature (°C)');
title('Least Squares Linear Fit of Room Temperature');
legend('show');
grid on;