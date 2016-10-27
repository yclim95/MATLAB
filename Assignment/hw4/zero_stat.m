function percentage = zero_stat(N)
    percentage = ((numel(N) - sum(N(:)))/ numel(N) ) * 100;
end