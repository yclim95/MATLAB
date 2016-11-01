% f = function handle // E.g : @sin 
% x1 < x2 (Scalar) 
% Goal : find x that lies in the range from x1 - x2

function x = find_zero(f, x1, x2)
    x = (x1 + x2)/2;  % Find for the midpoint 
    
    while abs(f(x)) > 1e-10 % Condition  if f(x) > 1 ^ -10
        if f(x1) * f(x) > 0  % if f(left) & f(mid) is POSITIVE 
            x1 = x;  % Move left = mid 
        else
            x2 = x;  % Move right = mid 
        end
        x = (x1 + x2)/2;  % Recalculate the midPoint 
    end
    
end