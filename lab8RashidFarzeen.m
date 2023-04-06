% Simulating a random walk in which the walker takes steps to the right or up/down with different probabilities. 
% The simulation is run a certain number of times and the proportion of successful trips (i.e., reaching a specific point) is calculated and displayed.

clc
clear

simulations = input('How many rounds of simulation do you want to simulate? ');
successful_trials = 0;

for i = 1:simulations
    x_position = 0;
    y_position = 10;
    successful_trip = false;

    while x_position < 60 && y_position >= 0 && y_position <= 20
        step_probability = rand;
        
        if step_probability <= 0.6
            x_position = x_position + 1;
        elseif step_probability <= 0.9
            y_position = y_position + 1;
        else
            y_position = y_position - 1;
        end
       
    end

    if x_position == 60
        successful_trip = true;
    end

    while successful_trip == true && x_position == 60
        successful_trials = successful_trials + 1;
        successful_trip = false; % Set this variable back to false because we want to start a new trip
    end

end

successful_prob = successful_trials / simulations;

disp(['Probability of success: ' num2str(successful_prob)]);