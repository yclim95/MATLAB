function cent = centuries(n)
    if ~isscalar(n) || n < 1 || n > 3000 || n ~= floor(n) % Elimate possibilites
        cent = '';
    else
        % 30 Centuries 
        % Note that : A century goes from year 1 to 100
        cents = {'I'; 'II'; 'III'; 'IV'; 'V'; 'VI'; 'VII'; 'VIII'; 'IX'; 'X';
              'XI'; 'XII'; 'XIII'; 'XIV'; 'XV'; 'XVI'; 'XVII'; 'XVIII'; 'XIX'; 'XX';
              'XXI'; 'XXII'; 'XXIII'; 'XXIV'; 'XXV'; 'XXVI'; 'XXVII'; 'XXVIII'; 'XXIX'; 'XXX'};
        
        cent = cents{ceil(n/100)};
    end
    
end