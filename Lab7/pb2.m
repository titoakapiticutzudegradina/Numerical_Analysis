%Problem 2
T = [0 10 20 30 40 60 80 100];
P = [0.0061 0.0123 0.0234 0.0424 0.0738 0.1992 0.4736 1.0133];
true_P_45 = 0.095848;

% Fit polynomials
deg1 = 2;
deg2 = 4;

poly1 = polyfit(T, P, deg1);
poly2 = polyfit(T, P, deg2);

% Evaluate at T = 45
T_eval = 45;
P1_45 = polyval(poly1, T_eval);
P2_45 = polyval(poly2, T_eval);

% Errors
err1 = abs(P1_45 - true_P_45);
err2 = abs(P2_45 - true_P_45);

% Display results
fprintf('Degree %d polynomial at T=45: %.6f, Error: %.6f\n', deg1, P1_45, err1);
fprintf('Degree %d polynomial at T=45: %.6f, Error: %.6f\n', deg2, P2_45, err2);

% Interpolation polynomial (degree 7)
interp_poly = polyfit(T, P, length(T)-1);

% Plotting range
T_fine = linspace(0, 100, 500);

% Evaluate all polynomials
P1_vals = polyval(poly1, T_fine);
P2_vals = polyval(poly2, T_fine);
P_interp_vals = polyval(interp_poly, T_fine);

% Plot
figure;
plot(T, P, 'ro', 'MarkerSize', 8, 'DisplayName', 'Data Points');
hold on;
plot(T_fine, P1_vals, 'b-', 'LineWidth', 2, 'DisplayName', sprintf('Degree %d Fit', deg1));
plot(T_fine, P2_vals, 'g--', 'LineWidth', 2, 'DisplayName', sprintf('Degree %d Fit', deg2));
plot(T_fine, P_interp_vals, 'm-.', 'LineWidth', 2, 'DisplayName', 'Interpolation (deg 7)');

xlabel('Temperature (°C)');
ylabel('Vapor Pressure (bars)');
title('Least Squares and Interpolation of Vapor Pressure vs. Temperature');
legend('show');
grid on;