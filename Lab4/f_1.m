%Facultative 1
f = @(x) sin(x);
a = -5;
b = 5;

%interp points
n = 20;
x_interp = linspace(a,b,n);
f_interp = sin(x_interp);
epsilon = 1e-3;

%generate points for plottiong the original function and the intrep
%polynomial
x_plot = linspace(a, b, 1000);
f_plot = f(x_plot);
p_plot = zeros(size(x_plot));

%lagrange interp poly using aitken's alg
for i = 1:length(x_plot)
    p_plot(i) = aitken(x_interp, f_interp, x_plot(i), epsilon);
end

%plot 
figure;
%interp points
plot(x_interp, f_interp, 'ro');
hold on;

%original function 
plot(x_plot,f_plot,'b--');
%lagrange interp poly
plot(x_plot,p_plot,'g--');

%information 
xlabel('x');
ylabel('f(x)');
title('lagrange interp using aitkens algo');

grid on;
hold off;