%Problem 3
x_plot = linspace(-5,5,1000);
f_plot = sin(2.*x_plot);


nodes = linspace(-5,5,20);
f_nodes = sin(2.*nodes);
%the hermit interp
f_interp = pchip(nodes,f_nodes, x_plot);
figure;
%true func
plot(x_plot, f_plot);
hold on;
%the interpolation
plot(x_plot,f_interp,'r--');
hold off;
