function digit = digit_counter(txtFile)
    
    fid = fopen(txtFile, 'r');
    
    if fid < 0
        digit = -1;
        return
    else
        A = fread(fid, inf, 'char');
        digitStr = A(isstrprop(A, 'digit')); % To determine if A(string) is a digit(String)
        
        digit = length(digitStr);  % Return number of digit 
    end
    
    fclose(fid);
    
end