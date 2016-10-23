function perimeter = peri_sum(A)
    selected = A(2:1:end-1, 2:1:end-1);
    perimeter = sum(A(:)) - sum(selected(:));
end