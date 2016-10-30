% Computes the sum of elements of A that are in the lower right triangular of A
% Counter Diagonal (From bottom left conner Up to the right)

function total = halfsum(A)
    [row col] = size(A);
    
    for i = 1:row
        for j = 1:col
            
            if (i < (row-j+1) )
                A(i,j) = 0;
            end
        end %End of Col
        
    end %End of Row
    
    total = sum(A(:) );
end 