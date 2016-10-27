function [numS, numP] = fence(lng, seg)
    numS = ceil(lng/seg);
    numP = numS + 1;
end