%Return a row-vector of struct--s whose elements correspons to the days of a mont in 2016
function month = year2016(m)
    if ~isscalar(m) || m < 1 || m > 12 || m ~= floor(m)
        month = [];  % Return an empty array 
        return
    end
    
    date = [31 29 31 30 31 30 31 31 30 31 30 31];
    ms = {'January', 'February', 'March', 'April', 'May', 'June', ...
        'July', 'August', 'September', 'October', 'November', 'December'};
    ds = {'Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'};
    
    start = 4;  % Jan 1, 2016 was a Friday... US Starting Week is Sunday 
                % Start = 4 because to get Sunday is the starting day of the Week 
                % How to do so ?? We'll add (i) and 1 below by using rem(n,7) which will return the remainder
                % 0-6 and we need indexes 1-7 
                
    start = start + sum(date(1:m-1));
    
    for i = 1:date(m)
        month(i).month = ms{m};
        month(i).date = i;
        month(i).day = ds{rem(start + i, 7) + 1};
        
    end
    
end