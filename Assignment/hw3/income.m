function overall = income(rate,price)
    matrix = (price * 6 * (8 *2)).* rate;
    overall = sum(matrix(:));
end