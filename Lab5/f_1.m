%Facultative 1
x = [8.3, 8.6];           
f_x = [17.56492, 18.50515]; 
f_derv_x = [3.116256, 3.151762];

x_interp = 8.4;

%interp for f(x)
f_interp= pchip(x,f_x,x_interp);
f_intep_deriv= pchip(x,f_derv_x,x_interp);


%compute exact value
f_exact = x_interp *log(x_interp)

%compute absolut error
err = abs(f_exact-f_interp)
