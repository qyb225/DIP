function [b_filter] = butterworth_filter(size, D0, level, type)
    M = size(1);
    N = size(2);
    b_filter = zeros(M, N);
    m = floor(M / 2);
    n = floor(N / 2);
    for i = 1 : M
        for j = 1 : N
            d = sqrt((i - m) ^ 2 + (j - n) ^ 2);
            if (strcmp(type, 'low'))
                b_filter(i, j) = 1 / (1 + (d / D0) ^ (2 * level));
            elseif (strcmp(type, 'high'))
                b_filter(i, j) = 1 / (1 + (D0 / d) ^ (2 * level));
            end
        end
    end
end

