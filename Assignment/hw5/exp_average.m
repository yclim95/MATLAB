% Exponentially Average
function average = exp_average(in,b)
    persistent outN;
    persistent bN;
    
    switch nargin 
        case 1
            if isempty(bN)
                b = 0.1;
            else
                b = bN;
            end
            
            if isempty(outN)
                outN = in;
            else
                outN = b * in + (1 - b) * outN;
            end
            
        case 2
            bN = b;
            outN = in;
            
        otherwise
            error('Please select 1 or 2');
            
    end
    
    average = outN;
end