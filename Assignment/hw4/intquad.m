function Q = intquad(n,m)
    dimension = zeros(n,m);
    Q = [dimension dimension+1; dimension+2 dimension+3];
end