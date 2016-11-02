% Find the total prime numbers in circular fashion < n

function  total = circular_primes(n)
    total = 0; 
    
    for p = primes(n-1)  %E.g n = 25, so p = primes(25-1) .... [2, 3, 5, 7, 11, 13, 17, 19, 23]
        if is_prime(p)
            total = total + 1; 
        end
    end
    
end

function condition = is_prime(p)
    string = num2str(p); %Convert num to String for easy shifting 
    
    for i = 1:length(string)
        string = circshift(string, [0 1]); %Shift 1 column spacing to the right
        
        if ~isprime(str2num(string))
            condition = false;  % Is NOT a circular Prime
            return  %  Terminate and exit the program safely
        end
        
    end %End of loop
    
    condition = true;  % It is a circular Prime 
end