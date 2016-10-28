function pass = eligible(v,q)
    if mean([v q]) >= 92 && (v > 88 && q > 88)
        pass = true;
    else 
        pass = false;
    end
end