function P = reverse_diag(n)
    P = zeros(n);
    P(1:n+1:end) = 1;
    P = flip(P);
end