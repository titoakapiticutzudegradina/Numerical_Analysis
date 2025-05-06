%Problem 5
%point a
x1 = [-2, -1, 0, 1, 2];
y1 = 3.^ x1;

%point to evaluate
x_val1 = 1/2;
approx1 = neville(x1, y1, x_val1);
fprintf('Approx of sqrt(3) using f1(x) = 3^x: %.6f\n', approx1);

%point b
x2 = [0, 1, 2, 4, 5];
y2 = sqrt(x2);

%point to evaluate
x_val2 = 3;
approx2 = neville(x2, y2, x_val2);

fprintf('Approximation of sqrt(3) using f2(x) = sqrt(x): %.6f\n', approx2);