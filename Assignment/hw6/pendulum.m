% a0  positive number < PI
% l = Length of rod 
% T = period of a simple pendulum 
function T = pendulum(L, a0)
    T= 0 ; % By default is 0 
    
    if L > 0 
        deltaT = 1e-6;
        gravity = 9.8;
        ang = abs(a0); % Angle 
        w = 0; % Angular Velocity 
        
        while ang > 0
            a = gravity * sin(ang)/L; %Accerelation
            w = w + (deltaT * a);
            ang = ang - deltaT * w;
            T = T + deltaT;
        end
        T = T * 4; %Elapsed Time
    end 
    
end