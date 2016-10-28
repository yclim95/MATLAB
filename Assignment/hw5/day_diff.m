%Difference in the year of 2015

function dd = day_diff(month1, day1, month2, day2)
    
    if nargin ~= 4
        error('Must 4 input arguments');
    end
    
    inputs = [month1 day1 month2 day2];
    days = [31 28 31 30 31 30 31 31 30 31 30 31];
    %Check for scalar type
    if length(inputs) > 4
        dd = -1;
        return
    else 
        
        % Check for integer inputs 
        if isequal(inputs,fix(inputs)) == 0
            dd = -1;
            return
        end
        
        % check for valid month values
        if month1 < 1 || month2 < 1 || month1 > 12 || month2 > 12
            dd = -1;
            return
        end
        
        % check for valid day values
        if day1 < 1 || day2 < 1 || day1 > days(month1) || day2 > days(month2)
            dd = -1;
            return
        end
        
    end
    
    % Start Calculating
    % Same Month
    if month1 == month2
        dd = abs(day1 - day2);
        return
    
    % Different Month : Swap Order : Ascending 
    elseif month1 > month2
        temp = day1;
        day1 = day2;
        day2 = temp;
        
        temp = month1;
        month1 = month2;
        month2 = temp;
        
    end
    
    % Total days of month borrowed
    totalMD = sum( days(month1+1 : 1: month2-1) ); 
    
    dd = ( days(month1) - day1 ) + day2 + totalMD;
end