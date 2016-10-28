function isHoliday = holiday(month, day)
    Holidays=[[1 1];[7 4];[12 25];[12 31]];
    
    %Check if it holiday exist ?
    v = [month day];
    HolidaysTemp = ismember(Holidays, v, 'rows');
    H = sum(HolidaysTemp);
    
    %Check if it is holiday 
    if H
        isHoliday = true;
    else 
        isHoliday = false;
    end
    
end