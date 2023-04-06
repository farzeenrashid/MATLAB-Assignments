clc
clear

% Converting Celcius to Fahrenheit
celcius = input('What is the degrees in Celcius(C)? ');
fahrenheit = ((celcius*9)/5) + 32;
fprintf('The degree in Fahrenheit (F) is = %.2f', fahrenheit);