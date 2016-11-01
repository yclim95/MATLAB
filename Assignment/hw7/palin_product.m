% a is the smallest digit number that can be formed. 
% If the smallest possible product (a ^ 2) is < limit, we determine 
% b, the largest digit number that can be formed. 

function n = palin_product(dig, lim)
    n = 0; 
    a = 10 ^ (dig - 1);  % Smallest
    
    if lim > a ^ 2
        b = (10 ^ dig) -1; % Largest 
        P = (a:b)' * (a:b);
        P = P(P < lim); % Elimate the element in P that is < limit 
        
        %Need to convert from num to String so that it can switch place easily 
        
        Q = str2num(fliplr(num2str(P))); % Flip horizotal left to right 
        n = max(P(P == Q));  %Flip to check for Palindrome
    end
end