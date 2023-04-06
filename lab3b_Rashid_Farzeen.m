clc
clear

% Finding size, min, max, standard deviation, and reording of an array.

A = [3.1 5.8 6.3 2.6 2.1 7.0 5.0 8.2 4.2];
size_A = size(A)
minimum_value = min(A(:))
maximum_value = max(A(:))
mean_value = mean(A(:))
median_value = median(A(:))
standard_deviation = std(A(:))
min_to_max = sort(A(:))