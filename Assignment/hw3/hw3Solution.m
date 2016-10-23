%% Problem 1 : circle
function [area, cf] = circle(r)
    area = r.^2 * pi;
    cf = 2 * r * pi;
end

%% Problem 2 : even_index
function E = even_index(A)
    E = A(2:2:end,2:2:end);
end

%% Problem 3 : flip_it
function v = flip_it(v)
    v = v(end:-1:1);
end

%% Problem 4 : top_right 
function A = top_right(A,n)
    A = A(1:n,end-n+1:end);
end

%% Problem 5 : peri_sum (Logic Thinking : Level of hardness 3/5)
function s = peri_sum(A)
    B = A(2:end-1,2:end-1);
    s = sum(A(:)) - sum(B(:));
end

% OR

function s = peri_sum(A)
    s = sum(A(1,:)) + sum(A(end,:)) + sum(A(2:end-1,1)) + sum(A(2:end-1,end));
end

%% Problem 6 : light_speed (Formula : Level of hardness 2/5)
function [t m] = light_speed(km)
    t = km / 3e5 / 60;
    m = km / 1.609;
end

%% Problem 7 : accelerate (Formula : Level of hardness 3/5)
function a = accelerate(F1,F2,m)
    F = F1 + F2;
    f = sqrt(sum(F.^2));
    a = f/m;
end

%% Problem 8 : income (Mathematic Multiplication)
function s = income(rate,price)
    s = 6 * 2 * 8 * rate * price';
end

function s = income(rate,price)
    s = 6 * 2 * 8 * sum(rate .* price);
end