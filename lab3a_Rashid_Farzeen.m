clc
clear

% Plotting the model population and the actual 
% population of the United States from 1790 to 2020.

t = 1790:2020;
p = (197273000)./(1 + exp(-0.03134 * (t - 1913.25)));

figure(1)
plot(t,p)
hold on

year = 1790:10:2020;
populations = [3929214, 5308483, 7239881, 9638453, 12866020, 17069453, ...
    23191876, 31443321, 38558371, 50189209, 62979766, 76212168, 92228496, ...
    106021537, 123202624, 132164569, 151325798, 179323175, 203211926, ...
    226545805, 248709873, 281421906, 308745538, 331449281];
scatter(year, populations)

xlim([1750 2000])
ylim([0 2e8])
legend('Model Population', 'Real Population')
title('Population of the United States from 1790 to 2020') 
xlabel('Year') 
ylabel('Population size')

fprintf('This graph shows the model population in the United States\n');
fprintf('compared to the actual population from 1790 to 2020.\n');
fprintf('The model population is similar to the\n');
fprintf('actual population, as it follows the trend,\n')
fprintf('but there are some differences and discrepencies.\n');