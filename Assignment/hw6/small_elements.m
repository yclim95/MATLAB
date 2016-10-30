%Identify those elements of X that are < (row * col) -> products of indexes 
function indexes = small_elements(X)
    
    [row col] = size(X);
    indexes = [];
    
    for j = 1 : col
        for i = 1 : row
            if X(i,j) < (i * j)
                indexes =  [indexes; i j];
            end
            
        end % End of col
        
    end %End of row
end