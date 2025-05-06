%Problem 2
x = [1, 2, 3, 4, 5];
y = [22, 23, 25, 30, 28];

%point a
DD = divided_differences(x, y);

x_approx = 2.5;
y_approx = newton(x, DD, x_approx);
fprintf("Approx yield for %.2f pounds of fertilizer is %.2f pounds.\n", x_approx, y_approx);

%point b
x_vals = linspace(1,5,100);
y_vals = arrayfun(@(t)newton(x,DD,t), x_vals);

figure;
plot(x,y,'ro','markersize',10);
hold on;

%interpolation curve
plot(x_vals, y_vals,'b-','LineWidth',2);
%approx point computed at point a 
plot(x_approx,y_approx,'gs','MarkerSize',10,'LineWidth',2);

%information
xlabel('fertilizer');
ylabel('yield');
title('Interpolation of yield vs fertilizer');
hold off;