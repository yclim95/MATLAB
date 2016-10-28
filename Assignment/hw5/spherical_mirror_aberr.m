function mbd = spherical_mirror_aberr(fn,D)
    f = fn * D; %Focal Length
    delta_x = 0.01;%Formula 
    x = 0 : delta_x : D/2; %Vector x
    
    theta = asin(x/(2*f) );
    d = 2 * f * tan(2 * theta) .* ( 1 ./ cos(theta) -1);
    
    % Mean Blur diamter 
    mbd = ( (8 * delta_x)/(D^2) ) * x * d';
end