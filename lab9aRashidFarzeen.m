% Fitting data with first, second, third, & fourth-order polynomials

clc
clear

data = readtable('lab9data.txt');
volume = data{:, 1};
pressure = data{:, 2};
interval = 0:0.2:10;

figure(1)
scatter(volume, pressure)
hold on

p1 = polyfit(volume, pressure, 1);
P1 = polyval(p1, interval);
plot(interval, P1)
hold on

p2 = polyfit(volume, pressure, 2);
P2 = polyval(p2, interval);
plot(interval, P2)
hold on

p3 = polyfit(volume, pressure, 3);
P3 = polyval(p3, interval);
plot(interval, P3)
hold on

p4 = polyfit(volume, pressure, 4);
P4 = polyval(p4, interval);
plot(interval, P4)
hold on

title('Pressure vs. Volume when I=300K');
xlabel('Volume (m^3)')
ylabel('Pressure (kPa)')
legend('Actaul Data', '1st order polynomial', '2nd order polynomial', ...
    '3rd order polynomial', '4th order polynomial interpolation')

disp('The fourth order polynomial model seems to do the best job');