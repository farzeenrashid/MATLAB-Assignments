% The stock prices of Apple Inc. (AAPL) for the past eight years (Jan 2, 2015 to Feb 3, 2023). 
% The data has seven columns (i.e. Date, Open, High, Low, Close, Adjclose, and Volume). 
% In this lab we were instructed to plot the columns by time and calculate the average price by using this formula: (Open + Close) / 2. 
% Then write this information as the eighth column in a seperate file.

clc
clear

A = readtable('AAPL.csv');
Open = A{:,2};

figure(1)
Date = A{:,1};
High = A{:,3};
plot(Date, High)
title('High Vs. Date')

figure(2)
Date = A{:,1};
Low = A{:,4};
plot(Date, Low)
title('Low Vs. Date')

figure(3)
Date = A{:,1};
Close = A{:,5};
plot(Date, Close)
title('Close Vs. Date')

figure(4)
Date = A{:,1};
Volume = A{:,7};
plot(Date, Volume)
title('Volume Vs. Date')

Average = (Open + Close)/2;
writematrix('Average', 'APPL-new-final.csv')