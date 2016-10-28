% s = Smallest
% m = Middle 
% l = Largest

function [s,m,l] = sort3(vec)
    if vec(1) > vec(2) || vec(1) > vec(3)
        temp = vec(2);
        vec(2) = vec(1);
        vec(1) = temp;
        
        if vec(1) > vec(3)
            temp = vec(3);
            vec(3) = vec(1);
            vec(1) = temp;
        end
    end
    
    if vec(3) < vec(2)
        temp = vec(2);
        vec(2) = vec(3);
        vec(3) = temp;
    end
    
    s = vec(1);
    m = vec(2);
    l = vec(3);
end