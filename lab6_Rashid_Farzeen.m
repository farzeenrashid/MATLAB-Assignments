% Modifying some of the parameters of the SA algorithm and observing the outcome.

% The number of trials per cycle
X = 500:500:2500;

% The best solutions  for each experiment and number of trials
Y = [0.048527, 0.046327, 0.037492, 0.11268, 0.00048792, 0.0017474, 0.012138, 0.012404, 0.016495, 0.028309;
    0.017236, 0.00038756, 0.0091427, 0.05956, 0.039101, 0.01033, 0.019774, 0.01691, 0.078128, 0.031068;
    0.0049075, 0.0086612, 0.0031093, 0.025596, 0.033074, 0.011486, 0.00037708, 0.038325, 0.017178, 0.054093;
    0.073648, 0.0015567, 0.018113, 0.033183, 0.014331, 0.01377, 0.00062102, 0.24032, 0.0014634, 0.02682;
    0.065926, 0.014213, 0.015817, 0.014612, 0.0035311, 0.016138, 0.073582, 0.02431, 0.06456, 0.015527];

% The average time for each number of trials
average_time = [1.143465, 1.250769, 1.527099, 1.493430, 1.485462];

% Graph for average time vs. number of trials
figure(1)
plot(X, average_time);
title('Average Time Vs. Number Of Trials Per Cycle');
xlabel('Number Of Trials Per Cycle');
ylabel('Average Time (seconds)')

% Graph for best solution for experiment 1 vs. number of trials
figure(2)
plot(X,Y(:, 1));
title('EXP 1 Vs. Number Of Trials Per Cycle');
xlabel('Number Of Trials Per Cycle');
ylabel('Best Solution');

% Graph for best solution for experiment 2 vs. number of trials
figure(3)
plot(X,Y(:, 2));
title('EXP 2 Vs. Number Of Trials Per Cycle');
xlabel('Number Of Trials Per Cycle');
ylabel('Best Solution');

% Graph for best solution for experiment 3 vs. number of trials
figure(4)
plot(X,Y(:, 3));
title('EXP 3 Vs. Number Of Trials Per Cycle');
xlabel('Number Of Trials Per Cycle');
ylabel('Best Solution');

% Graph for best solution for experiment 4 vs. number of trials
figure(5)
plot(X,Y(:, 4));
title('EXP 4 Vs. Number Of Trials Per Cycle');
xlabel('Number Of Trials Per Cycle');
ylabel('Best Solution');

% Graph for best solution for experiment 5 vs. number of trials
figure(6)
plot(X,Y(:, 5));
title('EXP 5 Vs. Number Of Trials Per Cycle');
xlabel('Number Of Trials Per Cycle');
ylabel('Best Solution');