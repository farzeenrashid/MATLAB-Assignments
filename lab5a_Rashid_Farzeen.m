% Asking user to input the real and imaginary parts of a complex number.
% Displaying the magnitude and phase angle in degrees of a complex number.

real_part = input('Enter the real part of a complex number: ');
imag_part = input('Enter the imaginary part of a complex number: ');

magnitude = sqrt((real_part)^2 + (imag_part)^2);
z = complex(real_part, imag_part);
phase = rad2deg(angle(z));

fprintf('The magnitude and phase of %d + %di is\n', real_part, imag_part);
fprintf('Magnitude = %.4f Phase angle = %.4f degrees', magnitude, phase);