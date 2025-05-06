%Problem 3
r = 110;
p = 75;
a = 0;
b = 2*pi;

% Define the function to integrate
f = @(x) sqrt(1 - (p/r)^2 * sin(x));

% Evaluate for two different values of n
n1 = 50;
n2 = 100;

H1 = compute_H(f, a, b, p, r, n1);
H2 = compute_H(f, a, b, p, r, n2);

% Display results
fprintf('H(p, r) with n = %d: %.4f\n', n1, H1);
fprintf('H(p, r) with n = %d: %.4f\n', n2, H2);