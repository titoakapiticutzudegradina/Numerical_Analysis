%Facultative 2
a = -1;
b = 1;
%nodes
n = 10;

x_interval = linspace(a,b,1000);
x_equi = linspace(a,b,n);

x_cheb1 = cos(2*(1:n)-1)*pi/(2*n);
x_cheb2 = cos((1:n-1)*pi/n);

%point a
%Compute the lebesque func
g_equi = arrayfun(@(x) lebesgue_function(x,x_equi),x_interval);
g_cheb1 = arrayfun(@(x) lebesgue_function(x, x_cheb1), x_interval);
g_cheb2 = arrayfun(@(x) lebesgue_function(x, x_cheb2), x_interval);


%point b
figure;
subplot(3,1,1);
plot(x_interval,g_equi);

%infomation
title('lebesgue func for equidistant nodes');
xlabel('x');
ylabel('g(x)');

%point c
subplot(3,1,2);
plot(x_interval, g_cheb1);

% information
title('lebesgue func for chebyshev nodes, first kind');
xlabel('x');
ylabel('g(x)');


%point d
subplot(3, 1, 3);
plot(x_interval, g_cheb2);

% information
title('lebesgue func for chebyshev nodes, second kind');
xlabel('x');
ylabel('g(x)');
