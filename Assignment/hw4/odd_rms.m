function orms = odd_rms(nn)
    s = (1:2:2*nn).^ 2;
    
    orms = sqrt(mean(s));
end