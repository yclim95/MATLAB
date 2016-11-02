% ALL arguments are scalar
% V = voltage : positively charged isotopes of hydrogen, called "deutorens" ... 
% which spiral outwards on a clockwise direction.

% E = enegery of the deuteron when it espaces in units of million electron volts(MeV) ..
% which  = VN X 10 ^ -6
% N = number of times the deuteron enters the 'D's
% Note : Centers of he semicircles ~= center of cyclotron

function [E,N] = cyclotron(V)
    m = 3.344e-27;   % mass of deuteron (kg)
    q = 1.603e-19;   % charge of deuteron (c)
    B = 1.600;       % magnetic field strength (tesla)
    
    % Formula for radii
    z = (m*V) / (q*B^2);  % Initial trajectory radius squared [m^2]
    r = sqrt(z);  % Inital radius of curvature
    
    N  = 0;     % Number of times the deuteron enters the 'D's
    d = 2;      % Diameter/radius
    x = -r/2.0;
    
    while x >= -0.5   %While deuteron has not emerged
        x =  x + d * r;          % spiral to next x - coordinate
        N = N + 1;               % number of times the deuteron enters the 'D's & RETURN
        d = -d;                  % alternate sign for direction
        r = sqrt(r^2 + 2 * z);   % Calculate new radius
    end
    
    E = V*N*1e-6;  % Calculates the energy and return it
end