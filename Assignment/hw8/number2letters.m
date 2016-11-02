% Goal : return the number of letters neeed to write down the number n in wods
% E.g : 342(three hundred forty two) = 20 letters 
% Accept positive integer < 1000

function totalL = number2letters(n)
    A = [0 3 3 5 4 4 3 5 5 4; ...    % units (0-9)
         3 6 6 8 8 7 7 9 8 8; ...    % 'teens' (10-19)
         0 0 6 6 5 5 5 7 6 6];       % tens (0,10,20...90)
     
    for i = 1:n
        % Break the numbers apart(to differiate) ... 
        h = fix(i/100);             % Hundred
        t = fix(rem(i,100)/10);     % Tens
        u = rem(i,10);              % Unit
        
        % To check for Hundred (E.G 121)
        if h > 0
            totalL = A(1,h+1) + 7;  % If there is hundred....get the total number of letters. '7' is added because of 'hundred'
        else
            totalL = 0;
        end
        
        % Ten (Break)
        switch t
            case 0
                totalL = totalL + A(1, u+1);                % Unit (0-9)
            case 1
                totalL = totalL + A(2, u+1);                % Teens (10 -19)
            otherwise
                totalL = totalL + A(3, t+1) + A(1, u+1);    % Tens 20 and above(E.g 21) 
        end
        
    end %End of loop
end