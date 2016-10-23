function [light_dis,mile] = light_speed(distanceInKm)
    light_dis = distanceInKm / 300000 / 60;
    mile = distanceInKm / 1.609;
end 