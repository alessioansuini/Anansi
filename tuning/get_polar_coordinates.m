function [rho, phi] = get_polar_coordinates(z)

tmpy = imag(z);
tmpx = real(z);            
rho = abs(z);
phi = atan2(tmpy, tmpx);
if phi < 0 
    phi = phi + 2*pi;
end

end