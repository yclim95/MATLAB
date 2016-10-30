% Computes the sum in 2 diaganoals -> clock-wise direction
function [total] = spiral_diag_sum(n)
    v = 3 : 2 : n;
    total = 1 + sum(4*v.^2 - 6*(v-1)); 
end