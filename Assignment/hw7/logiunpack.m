% Each element of the cell vector is a row vector of positive integers in increasing order representing the column indexes of the logical
%     TRUE values in the given row of the matrix.
% All other elements in the given row of the logical matrix are FALSE

function M = logiunpack(v)
    n = length(v);
    M = false(n); %Create a( n X n ) with 0 
    
    for i = 1:n 
        for j = 1:length(v{i})
            M(i, v{i}(j)) = true; % {i} access that pointer memory, (j) access that element
        end
    end
    
end