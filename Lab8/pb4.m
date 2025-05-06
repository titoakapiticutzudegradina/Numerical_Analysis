%Problem 4
f = @(x) x .* log(x);

% Integration limits
a = 1;
b = 2;

% Exact value (high-precision reference)
I_exact = 0.636294368858383;

% Desired accuracy
tolerance = 5e-5;  

% Initialize n
n = 1;
error = Inf;

while error > tolerance
    h = (b - a) / n;
    x = linspace(a, b, n+1);
    y = f(x);
    
    % Repeated trapezium rule
    I_approx = h * (0.5*y(1) + sum(y(2:end-1)) + 0.5*y(end));
    
    % Compute absolute error
    error = abs(I_exact - I_approx);
    
    if error > tolerance
        n = n + 1;
    end
end

% Display final results
fprintf('Smallest n for 3-decimal accuracy: %d\n', n);
fprintf('Trapezium Rule Approximation: %.15f\n', I_approx);
fprintf('Exact Value: %.15f\n', I_exact);
fprintf('Absolute Error: %.15e\n', error);