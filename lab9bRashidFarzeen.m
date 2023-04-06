% Interpolated graphs

clear 
clc

temperature = [0 8 16 24 32 40];
oxygen = [14.621 11.843 9.870 8.418 7.305 6.413];
interval = 0:40;

figure(1)
p = polyfit(temperature, oxygen, 5);
P = polyval(p, interval);
plot(interval, P)
title('Fifth Order Polynomial')
xlabel('Temperature (Celcius)')
ylabel('Oxygen (mg/L)')

figure(2)
s = spline(temperature, oxygen, interval);
plot(interval, s)
title('Spline')
xlabel('Temperature (Celcius)')
ylabel('Oxygen (mg/L)')

figure(3)
i = interp1(temperature, oxygen, interval);
plot(interval, i)
title('Piecewise Linear Interpolation')
xlabel('Temperature (Celcius)')
ylabel('Oxygen (mg/L)')

fprintf('The values for Oxygen(27) are...\n')
fprintf('Piecewise linear interpolation: %f\n', i(27))
fprintf('Fifth-order polynomial: %f\n', P(27))
fprintf('Spline: %f\n', s(27))