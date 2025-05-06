%Problem 2
f = @(x, y) log(x + 2*y);

% Integration limits
x0 = 1.4;  x1 = 2;
y0 = 1;    y1 = 1.5;

% Number of subintervals
nx = 10;
ny = 10;

% Step sizes
hx = (x1 - x0) / nx;
hy = (y1 - y0) / ny;

% Grid points
x = linspace(x0, x1, nx+1);
y = linspace(y0, y1, ny+1);
[X, Y] = meshgrid(x, y);

% Evaluate the function
Z = f(X, Y);

% Create trapezoidal weights
W = ones(size(Z));
W([1 end], :) = W([1 end], :) * 0.5;    % Top and bottom
W(:, [1 end]) = W(:, [1 end]) * 0.5;    % Left and right
W(1,1) = 0.25; W(1,end) = 0.25;
W(end,1) = 0.25; W(end,end) = 0.25;     % Corners

% Apply the trapezoidal rule
I = hx * hy * sum(sum(W .* Z));

% Display the result
fprintf('Double integral approximation: %.7f\n', I);