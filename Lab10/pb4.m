%Problem 4
%% Point a
fprintf('Condition numbers of Vandermonde matrices for t_k = 1/k:\n');

for n = [10, 15]
    k = 1:n;
    t = 1 ./ k;                      % Generate points t_k = 1/k
    V = vander(t);                   % Generate Vandermonde matrix
    cond_V = cond(V);                % Compute condition number
    fprintf('n = %d, cond(V) = %.4e\n', n, cond_V);
end


%% Point b
fprintf('Condition numbers of Vandermonde matrices for t_k = -1 + 2*k/n:\n');

for n = [10, 15]
    k = 1:n;
    t = -1 + (2 * k) / n;    % t_k = -1 + 2k/n
    V = vander(t);           % Vandermonde matrix
    cond_V = cond(V);        % Condition number
    fprintf('n = %d, cond(V) = %.4e\n', n, cond_V);
end

