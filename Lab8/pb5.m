%Problem 5
f = @(x) 1 ./ (4 + sin(20 * x));

% Integration limits
a = 0;
b = pi;

% Compute for n = 10
n1 = 10;
I1 = simpsons_rule(f, a, b, n1);

% Compute for n = 30
n2 = 30;
I2 = simpsons_rule(f, a, b, n2);

% Display results
fprintf('Simpson''s Rule Approximation (n = %d): %.7f\n', n1, I1);
fprintf('Simpson''s Rule Approximation (n = %d): %.7f\n', n2, I2);