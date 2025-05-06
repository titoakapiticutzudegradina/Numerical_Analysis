%Problem 1
x = [1, 1.5, 2, 3, 4];
lg_x = [0, 0.17609, 0.30103, 0.47712, 0.60206];

x_approx = [2.5, 3.25];

i=10:0.01:35;
y_i = i/10;

%init divided differeneces table
DD = divided_differences(x, lg_x);
%evaluate poly at tha points
lg_approx= newton(x,DD,x_approx);

%print the results
fprintf('Approximation of lg2.5: %.5f\n',lg_approx(1));
fprintf('Approximation of lg3.25: %.5f\n',lg_approx(2));

%interpolation values
N = newton(x, DD, y_i);
%maximum interpolation error
err = max(abs(log10(y_i) - N));
%print the error
fprintf('Max interpolation error: %.5f\n', err);