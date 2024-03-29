clc
clear

% The user enters marks for 5 assignments. The weights of the 5 
% assignments depend on whether they like apples, oranges, or bananas.

fruit = string(input('What is your favourite fruit? ', 's'));
hw1 = input('Enter your mark for homework 1: ');
hw2 = input('Enter your mark for homework 2: ');
hw3 = input('Enter your mark for homework 3: ');
hw4 = input('Enter your mark for homework 4: ');
hw5 = input('Enter your mark for homework 5: ');

if strcmpi(fruit, 'apple')
    HW1 = 0.1*hw1;
    HW2 = 0.25*hw2;
    HW3 = 0.2*hw3;
    HW4 = 0.2*hw4;
    HW5 = 0.25*hw5;
elseif strcmpi(fruit, 'orange')
    HW1 = 0.05*hw1;
    HW2 = 0.3*hw2;
    HW3 = 0.1*hw3;
    HW4 = 0.2*hw4;
    HW5 = 0.35*hw5;
elseif strcmpi(fruit, 'banana')
    HW1 = 0.2*hw1;
    HW2 = 0.15*hw2;
    HW3 = 0.25*hw3;
    HW4 = 0.2*hw4;
    HW5 = 0.2*hw5;
else 
    fprintf('Invalid');
end

percentage = HW1 + HW2 + HW3 + HW4 + HW5;

if percentage >= 80
    grade = 'A';
elseif percentage <= 79 && percentage >= 70
    grade = 'B';
elseif percentage <= 69 && percentage >= 60
    grade = 'C';
elseif percentage <= 59 && percentage >= 50
    grade = 'D';
else
    grade = 'F';
end

disp(['Final percentage: ' num2str(round(percentage)) '%']);
disp(['Final letter grade: ' grade]);