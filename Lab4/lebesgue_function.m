function g = lebesgue_function(x, nodes)
    n = length(nodes);
    g = zeros(size(x));
    for i = 1:n
        l_i = ones(size(x));
        for j = 1:n
            if j ~= i
                % formula
                nominator = x - nodes(j);
                denominator = nodes(i) - nodes(j);
                % update the term in the sum
                l_i = l_i .* (nominator / denominator);
            end
        end
        % update the sum with the current term
        g = g + abs(l_i);
    end
end