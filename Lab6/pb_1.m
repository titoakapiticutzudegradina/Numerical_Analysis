%Problem 1
f = @(x) sin(x);
nodes = [0, pi/2, pi, 3*pi/2, 2*pi];
values = f(nodes);

% point to eval
x_eval = pi/4;

natural_spline = spline(nodes, values);
natural_val = ppval(natural_spline, x_eval);

% clamped spline
derivs = [cos(nodes(1)), cos(nodes(end))];
clamped_spline = spline(nodes, [derivs(1), values, derivs(2)]);
clamped_val = ppval(clamped_spline, x_eval);

fprintf('at x = pi/4 (%.4f):\n', x_eval);
fprintf('function value: %.6f\n', f(x_eval));
fprintf('natural spline value: %.6f\n', natural_val);
fprintf('clamped spline value: %.6f\n', clamped_val);

%plot
x_plot = linspace(0, 2*pi, 1000);
figure;
hold on;
% original function
plot(x_plot, f(x_plot), 'b-', 'LineWidth', 2, 'DisplayName', 'sin(x)');
% natural spline
plot(x_plot, ppval(natural_spline, x_plot), 'r--', 'LineWidth', 2, 'DisplayName', 'natural spline');
% plot clamped spline
plot(x_plot, ppval(clamped_spline, x_plot), 'g-.', 'LineWidth', 1.5, 'DisplayName', 'clamped spline');
% plot nodes
plot(nodes, values, 'ko', 'MarkerFaceColor', 'k', 'DisplayName', 'nodes');

% information
xlabel('x');
ylabel('f(x)');
title('Comparison of sin(x) with Natural and Clamped Splines');
legend('Location', 'best');

grid on;
hold off;
