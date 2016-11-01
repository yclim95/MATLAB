function n = dial(s)
    if ~all(ismember(s, ['0' : '9' , 'A' : 'Z']) ) || length(s) > 16
        n = uint64(0);
    else
        % [2 ABC, 3 DEF, 4 GHI, 5 JKL, 6 MNO, 7 PQRS, 8 TUV, 9 WXYZ]
        map = '22233344455566677778889999';
        
        % Get rid of anything that is less than 'A' in 's' using map 
        % Reassignit to s(s>='A')
        % other than anything that are (> than 'A') is add back on). E.g: Number
        % In other words, all the placing for the number remains 
        s(s >= 'A') = map(s(s >= 'A') - 64); 
        n = uint64(str2double(s));  % use str2double() instead of str2num because... now we are operating on scalar... which help improve performance
        
    end
    
end