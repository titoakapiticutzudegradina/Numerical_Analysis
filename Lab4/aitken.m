function p = aitken(x, f, alpha, epsilon)
    % init Aitken's table
    n = length(x);
    table = zeros(n, n);
    % first column is f(x_i)
    table(:, 1) = f;

    % fill the Aitken's table
    for j = 2:n
        for i = j:n
            %the determinant of the matrix
            nominator = (alpha - x(i-j+1))*table(i,j-1)-(alpha-x(i))*table(i-1,j-1);
            %1/x_i -x_j
            denominator = x(i)-x(i-j+1);
            table(i,j) = nominator/denominator;
        end

        % check the stopping criterion
        if abs(table(j, j) - table(j-1, j-1)) < epsilon
            break;
        end
    end

    % the final approximation is the last diagonal element
    p = table(j, j);
end