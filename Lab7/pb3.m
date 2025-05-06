%Problem 3
figure;

% Set limits for the plot (region [0, 3] x [0, 5])
xlim([0 3]);
ylim([0 5]);
xlabel('X-axis');
ylabel('Y-axis');
title('Random Points and Fitted 2nd-Degree Polynomial');

% Instructions for the user
disp('Click on the plot to select 10 points. Press Enter when done.');

% Get 10 points using ginput
n = 10; % Number of points to collect
[x, y] = ginput(n); % Click on the plot to select 10 points

% Plot the selected points as red circles
hold on;
plot(x, y, 'ro', 'MarkerFaceColor', 'r');  % Red circles for the points

% Fit a 2nd-degree polynomial to the points using polyfit
p = polyfit(x, y, 2);  % p contains the coefficients of the polynomial

% Generate a set of points for the fitted polynomial
x_fit = linspace(0, 3, 100);  % Generate 100 points between 0 and 3
y_fit = polyval(p, x_fit);  % Evaluate the polynomial at each x point

% Plot the fitted 2nd-degree polynomial
plot(x_fit, y_fit, 'b-', 'LineWidth', 2);  % Blue line for the fitted polynomial

% Display the polynomial coefficients
disp('Polynomial coefficients for the 2nd-degree fit:');
disp(p);

% Grid on
grid on;