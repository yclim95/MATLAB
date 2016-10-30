function [largestP, largestI] = max_product(v,n)
    l = length(v); % maximum length of Vector v 
    
    if n > l 
        largestP = 0;
        largestI = -1;
    
    else 
        P = Inf(1, l-n+1); % Preallocate product Vector 
        
        for i = 1 : 1:l-n+1 % Limit 
            P(i) = prod(v(i:i+n-1));  % Populate product Vector 
        end
        
        [largestP, largestI] = max(P);  % Return the larget Product and Largest Indices)
        
    end
    
end