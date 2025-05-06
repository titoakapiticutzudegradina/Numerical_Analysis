%Problem 2

%use ginput to get 5 arbitrary points
figure;
title('Click 5 points for cubic natural spline');
xlabel('x');
ylabel('y');
grid on;

%get the input
[x,y] = ginput(5);

%compute natural spline
spline_curve = spline(x,y);

xx = linspace(min(x),max(x),100);
%evalute the spline
yy = ppval(spline_curve, xx);

%plot
figure;
plot(x, y, 'ro', 'MarkerFaceColor', 'r'); % Plot the points
hold on;
plot(xx, yy, 'b-', 'LineWidth', 2);  % Plot the spline
title('Cubic Natural Spline Interpolation');
xlabel('x');
ylabel('y');
legend('Given Points', 'Cubic Natural Spline');
grid on;
hold off;