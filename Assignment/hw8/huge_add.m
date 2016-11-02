% Goal : adds together 2 positive integers of any length specified as strings using decimal notation
% totalS = output and String 
% Inputs & Output must contain digits[0...9] only, no commas(,), spaces( ) or any...
% other character(%@) are allowed. If so, return -1 as the output

function totalS = huge_add(a,b)
    %Check for violation 
    if ~ischar(a) || ~ischar(b) || sum(isstrprop(a,'digit')) ~= length(a) || ...
            sum(isstrprop(b, 'digit')) ~= length(b)
        totalS = -1; % return -1 as output
        return  % Terminate and exit the program safely
    end
    
    maxL = max([length(a) length(b)]); % Max Length
    %Convert 0 into char = 48 (Ascii code), which is the starting value of of a Number
    a = [a(end:-1:1) '0' + zeros(1, maxL-length(a))]; % a = [non-zero, '0' = 48], flip
    b = [b(end:-1:1) '0' + zeros(1, maxL-length(b))]; % b = [non-zero, '0' = 48], flip
    
    carry = 0;
    for i = 1 : maxL
        tempC = carry + str2num(a(i)) + str2num(b(i));    % Add the digts plus carry(if add up more than 10)
        carry = tempC > 9;                                % Carry ? (o or 1) : More than 9, 10 or above
        totalS(i) = num2str(mod(tempC,10));               % E.g 15/10 remainder is 5. Then 5 is assigned as the OUTPUT
    end % Endof Loop
    
    if carry 
        totalS(end + 1) = '1'; % Add '1' @ the end of the output 
    end
    
    totalS = totalS(end:-1:1);  % Flip again (the '1' will display Infront)
end