%Facultative 2
f = @(x) 3*x.*exp(x) -exp(2*x);
f_deriv = @(x) 3*exp(x) +  3*x.*exp(x) - 2*exp(2*x);

x0 = 1;
x1 = 1.05;
x2 = 1.07;

f0 = f(x0);
f1 = f(x1);
f2 = f(x2);

f_derv0 = f_deriv(x0);
f_derv1 = f_deriv(x1);
f_derv2 = f_deriv(x2);

%point a
x_a = [x0,x1];
f_a  =[f0,f1];
f_deriv_a = [f_derv0,f_derv1];

pp_a = pchip(x_a, f_a, x_a);
pp_deriv_a = pchip(x_a, f_deriv_a, x_a);


%point b
x_b = [x0,x1,x2];
f_b  =[f0,f1,f2];
f_deriv_b = [f_derv0,f_derv1,f_derv2];

pp_b = pchip(x_b, f_b, x_b);
pp_deriv_b = pchip(x_b, f_deriv_b, x_b);

%Compute approx at x = 1.03
x_interp = 1.03;
f_approx_a = pchip(pp_a,x_interp);
f_approx_b = pchip(pp_b,x_interp);

%compute exact value
f_exact = f(x_interp);

%compute the errors
error_a = abs(f_exact - f_approx_a);
error_b = abs(f_exact - f_approx_b);

%display
fprintf('(a) Approximation using degree 3 polynomial at x = 1.03: %.5f\n', f_approx_a);
fprintf('(a) Absolute error: %.5f\n', error_a);

fprintf('(b) Approximation using degree 5 polynomial at x = 1.03: %.5f\n', f_approx_b);
fprintf('(b) Absolute error: %.5f\n', error_b);


%point c
x_plot = linspace(0.9,1.2,100);
f_values = f(x_plot);
figure;
hold on;
plot(x_plot,f_values);
plot(x_plot, ppval(pp_a,x_plot));
plot(x_plot,ppval(pp_b,x_plot));
legend('f(x)', 'Degree 3 interpolation', 'Degree 5 interpolation');
xlabel('x');
ylabel('f(x)');
title('Function f(x) and Hermite Interpolation Polynomials');
grid on;
hold off;
