%Problem 1
format long;

% Initial guess and parameters
x = [1; -1];
epsilon = 1e-6;
max_iter = 100;

fprintf('Newton''s Method for Nonlinear System:\n');
for k = 1:max_iter
    % Define the function vector
    F = [x(1)^3 + 3*x(2)^2 - 21;
         x(1)^2 + 2*x(2) + 2];
    
    % Jacobian matrix
    J = [3*x(1)^2,     6*x(2);
         2*x(1),       2];
    
    % Newton's update step: dx = -J^(-1)*F
    dx = -J\F;
    
    % Update solution
    x_new = x + dx;
    
    % Display progress
    fprintf('Iter %2d: x = [%.10f, %.10f], ||dx|| = %.3e\n', ...
        k, x_new(1), x_new(2), norm(dx));
    
    % Check stopping condition
    if norm(dx) < epsilon
        fprintf('Converged in %d iterations.\n', k);
        break;
    end
    
    x = x_new;
end

fprintf('Final solution: x = [%.10f, %.10f]\n', x(1), x(2));
