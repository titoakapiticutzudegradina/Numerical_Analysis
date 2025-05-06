%Problem 6
f = @(t) exp(-t.^2);

% erf(x) constant factor
const = 2 / sqrt(pi);

% Integration limit
x = 0.5;

% Correct (reference) value for comparison
erf_exact = 0.520499876;

% Evaluate erf(0.5) using Simpson's rule for n = 4 and n = 10
n1 = 4;
n2 = 10;

I1 = const * simpsons_rule(f, 0, x, n1);
I2 = const * simpsons_rule(f, 0, x, n2);

% Calculate errors
error1 = abs(I1 - erf_exact);
error2 = abs(I2 - erf_exact);

% Display results
fprintf('erf(0.5) with n = %d: %.9f (Error: %.2e)\n', n1, I1, error1);
fprintf('erf(0.5) with n = %d: %.9f (Error: %.2e)\n', n2, I2, error2);
fprintf('Exact value: %.9f\n', erf_exact);