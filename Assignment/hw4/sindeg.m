function [s, average] = sindeg(deg)
    s = sin((deg * pi)/180 );
    
    average = mean(s(:));
end 