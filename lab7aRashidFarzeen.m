% Calculating the molecular weight of an amino acid using dot product computation and user input for number of atoms.

clc 
clear

oxygen = input('Input the number of oxygen atons present in an amino acid: ');
carbon = input('Input the number of carbon atons present in an amino acid: ');
nitrogen = input('Input the number of nitrogen atons present in an amino acid: ');
sulfur = input('Input the number of sulfur atons present in an amino acid: ');
hydrogen = input('Input the number of hydrogen atons present in an amino acid: ');

% Atomic weights for each element
o = 15.9994;
c = 12.011;
n = 14.00674;
s = 32.066;
h = 1.00794;

molecular_weight = ...
    dot(carbon, c) + dot(hydrogen, h) + dot(oxygen, o) + ... 
    dot(nitrogen, n) + dot(sulfur, s);
fprintf('The molecular weight is %.1f\n', molecular_weight);