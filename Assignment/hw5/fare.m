function total = fare(distance,age)
    if distance <= 1
       total = 2.0;
    else
       if distance >= 1 && distance < 10
           total = 2 + (round(distance)-1) *0.25 ;
       end
       
       if distance > 10
           total = 2 + ((10-1)*0.25) + (round((distance)-10) * 0.10);
       end
    end
    
    if age <= 18 || age >= 60
        total = total * 0.8;
    end

end