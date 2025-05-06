%Problem 3
f = @(x) exp(sin(x));
a = 0;
b = 6;

%number of equidistant points
n = 13;
%interpolation points
x = linspace(a,b,n);
y = f(x);

%divided diff
DD = divided_differences(x, y);

x_vals = linspace(a,b,1000);
y_vals = arrayfun(@(t)newton(x, DD, t), x_vals);

figure;
%original function
plot(x_vals, f(x_vals), 'k-','LineWidth',2);
hold on;

%interpolation points
plot(x, y, 'ro', 'MarkerSize', 10);

%newton ploy
plot(x_vals, y_vals, 'b--', 'LineWidth',2);

%information
xlabel('x');
ylabel('f(x)');
title('newton interpolation polynomial');
grid on;
hold off;