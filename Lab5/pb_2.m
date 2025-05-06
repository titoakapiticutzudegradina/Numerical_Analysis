%Problem 2
x = [1, 2];
f_x = [0, 0.6931];
f_deriv_x = [1, 0.5];


x_val = 1.5;

f_interp = pchip(x,f_x,x_val)
f_deriv_interp = pchip(x,f_deriv_x,x_val)
f_true = log(x_val)
abs_err = abs(f_true - f_interp)


%valoare corecta 0.03
