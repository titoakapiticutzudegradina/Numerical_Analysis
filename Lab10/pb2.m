%Problem 2
%% Point a
% Define A and b
A = [10 7 8 7;
     7 5 6 5;
     8 6 10 9;
     7 5 9 10];

b = [32; 23; 33; 31];

% Solve the system
x = A \ b;

% Condition number
condA = cond(A);

fprintf('Solution x:\n');
disp(x);

fprintf('Condition number of A: %.4e\n', condA);


%% Point b
b_tilde = [32.1; 22.9; 33.1; 30.9];

% Solve system with tilda b
x_tilde = A \ b_tilde;

% Compute input relative error
input_rel_error = norm(b - b_tilde) / norm(b);

% Compute output relative error
output_rel_error = norm(x - x_tilde) / norm(x);

% Error amplification factor
error_amplification = output_rel_error / input_rel_error;

fprintf('\nInput relative error: %.4e\n', input_rel_error);
fprintf('Output relative error: %.4e\n', output_rel_error);
fprintf('Error amplification factor: %.4e\n', error_amplification);


%% Point c
A_bar = [10, 7, 8.1, 7.2;
         7.08, 5.04, 6, 5;
         8, 5.98, 9.89, 9;
         6.99, 4.99, 9, 9.98];

% Solve A_bar * x_bar = b
x_bar = A_bar \ b;

% Compute matrix input relative error
matrix_input_rel_error = norm(A - A_bar) / norm(A);

% Compute output relative error
matrix_output_rel_error = norm(x - x_bar) / norm(x);

% Error amplification
matrix_error_amplification = matrix_output_rel_error / matrix_input_rel_error;

fprintf('\nMatrix input relative error: %.4e\n', matrix_input_rel_error);
fprintf('Matrix output relative error: %.4e\n', matrix_output_rel_error);
fprintf('Matrix error amplification factor: %.4e\n', matrix_error_amplification);
