%Problem 1
% Point a
f = @(x) 2 ./ (1 + x.^2);

% Endpoints
a = 0;
b = 1;
h = b - a;

% Trapezium Rule
I_trap = (h / 2) * (f(a) + f(b));

fprintf('Trapezium Rule Approximation: %.4f\n', I_trap);


% Point b
% x values for smooth function curve
x = linspace(0, 1, 100);
y = f(x);

% Plot the function
figure;
plot(x, y, 'b-', 'LineWidth', 2);
hold on;

% Vertices of the trapezium
x_trap = [0 0 1 1];
y_trap = [0 f(0) f(1) 0];

% Plot trapezium
fill(x_trap, y_trap, 'r', 'FaceAlpha', 0.3, 'EdgeColor', 'k');
plot([0 1], [f(0) f(1)], 'ko--', 'LineWidth', 2); % top line of trapezium

title('Function f(x) and Trapezium Approximation');
xlabel('x');
ylabel('f(x)');
legend('f(x)', 'Trapezium', 'Location', 'NorthEast');
grid on;
hold off;


% Point c
% Simpson's Rule with n = 2 (3 points)
h = (b - a) / 2;
x0 = a;
x1 = (a + b) / 2;
x2 = b;

I_simp = (h / 3) * (f(x0) + 4*f(x1) + f(x2));

fprintf('Simpson''s Rule Approximation: %.4f\n', I_simp);