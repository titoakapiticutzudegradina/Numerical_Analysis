%Problem 3
fprintf('Condition numbers of Hilbert matrices H_n:\n');
for n = 10:15
    H = hilb(n);               % Generate Hilbert matrix of size n
    cond_H = cond(H);          % Compute condition number
    fprintf('n = %d, cond(H) = %.4e\n', n, cond_H);
end
