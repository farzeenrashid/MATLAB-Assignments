clc
clear

% Producing a random 3x3 matrix and finding the maximum value
A = rand(3)
maximumNumber = max(A(:))
[row_index, col_index] = find(A == maximumNumber)
fprintf('Max(A) is A(%d, %d) = %.4f\n', row_index, col_index, maximumNumber)