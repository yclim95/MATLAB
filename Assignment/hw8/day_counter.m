% Return the number of Mondays that fell on the first day of the month ....
% in a given year betweeen 1776 & 2016
function day = day_counter(year)
    
    if ~isscalar(year) || year < 1776 || year > 2016 || year ~= floor(year)
        Error('Invalid input. Please enter the year between 1776 and 2016');
    end
    
    % weekday() == 2 , because Monday is 2 as Sunday is the 1st day of the Week following USA 
    % datetime(2016,1:12:1), returns 12 months(col) 
    
    day = sum(weekday(datetime(year,1:12,1)) == 2);
    
end
