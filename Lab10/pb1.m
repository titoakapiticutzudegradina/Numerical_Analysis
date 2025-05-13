%Problem 1
%Point a
%Coefficient matrix A and vector b
A1 = [400, -201; -800, 401];
b = [200; -200];

%Solve the system A1 * x = b
x1 = A1 \ b;

%Display the result
fprintf('Solution to original system:\n');
disp(x1);

%Point b
%Modified matrix
A2 = [401, -201; -800, 401];

%Solve the modified system A2 * x = b
x2 = A2 \ b;

%Display the result
fprintf('Solution to modified system:\n');
disp(x2);

%Point c
%Compute condition numbers
cond_A1 = cond(A1);
cond_A2 = cond(A2);

fprintf('Condition number of original matrix: %.4e\n', cond_A1);
fprintf('Condition number of modified matrix: %.4e\n', cond_A2);


