function total = smallest_multiple(n)
    total = uint64(1);
    
    for i = 1:n
        %Include its ownself if it has remainder -> meaning .... 
        % it is not divisible by any term other that (itself), like '1', '2', '3'
        % This equation is to get the whole number that is divisable by  all the term from 1:n
        % gcd(total,i) -> Greatest Common Divisor 
        
        total = total * (i/gcd(total,i));
    end
    
    if total >= intmax('uint64')
        total = uint64(0);
    end
    
end