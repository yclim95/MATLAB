function sum = triangle_wave(n)
    t = (0:1000)*4*pi()/1000;

    sum=0;
    
    for k=0:n
     sum =sum + ( (-1)^k *  sin((2*k+1)*t)) / (2*k + 1 ) ^ 2;
    end
    
end