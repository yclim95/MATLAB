% A = matrix, n = scalar 
% Goal : Computes the largest product of n adjacent elements in the same direction in A...
% That is, we are looking for products of consecutives elements in the same row, column, diagonal or reverse diagonal
% Return an n-by-2 matrix containing the row and column indexes odered 1st by row and then by column ...
% Return empty array [] if no such product exist
% Return the 1st one you find, if there are multiple products with the same maximum value

function M = maxproduct(A,n)
    [rol,col] = size(A);
    
    % Check if product Exist 
    if n > rol && n > col
        M = [];
        return  % Terminate and Exit the program safely
    end
    
    L = zeros(1,4);    % [Product, Row, Col, direction]
    
    %Long Journey Begin
    for i = 1:rol
        for j = 1:col-n+1
            L = updateIsLarger(A(i, j:j + n - 1), [i, j, 1], L);  % row, right case
        end
    end
    
    for i = 1:rol-n+1
        for j = 1:col
            L = updateIsLarger(A(i:i+n-1 , j), [i,j, 2], L);      % col, Down case
        end
    end
    
    for i = 1:rol-n+1
        for j = 1:col-n+1
            S = A(i:i+n-1, j:j+n-1);
            L = updateIsLarger(diag(S), [i,j,3], L);              % diagnonal, Down case
            L = updateIsLarger(diag(flip(S,2)), [i,j,4], L);      % reverse diagonal, down case
        end
    end
    
    % Reconstruct the coordinates
    i = L(2);
    j = L(3);
    switch L(4)
        case 1
            M = [ones(n,1)*i, (j:j+n-1)'];
        case 2
            M = [(i:i+n-1)', ones(n,1)*j];
        case 3 
            M = [(i:i+n-1)', (j:j+n-1)'];
        case 4
            M = [(i:i+n-1)', (j+n-1:-1:j)'];
    end
    
end


function L = updateIsLarger(V, d, L)
    p = prod(V);   % Get the product of V
    
    if p > L(1)       % Check if new product > previous product
        L = [p, d];   % If so.... update [product, home, direction]
    end
end