% c0, x = scalar
% c = vector
% p = scalar

function p = poly_val(c0,c,x)
    c = c(:)'; %Change to col vector 
    
    n = length(c); %Get the maximum length of c(vector)
    
    switch n 
        case 0
            p = c0;
            
        case 1
            p = c0 + c * x;
            
        otherwise
            p = c0 + sum( ( (x * ones(n,1))' .^ [1:1:n]) .* c);
    end
    
end