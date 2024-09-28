% Problem D.1 - Operations on Matrix A
loadA = getfield(load("ELE532_Lab1_Data.mat"), "A");

% Display all elements of A as a column vector
disp('All elements of A as a column vector:');
loadA(:)

% Display elements 2, 4, and 7 of A
disp('Elements 2, 4, and 7 of A:');
loadA([2 4 7])

% Create a logical matrix corresponding to elements of A that are >= 0.2
disp('Logical matrix for A >= 0.2:');
[loadA >= 0.2]

% Display all elements of A that are >= 0.2 as a column vector
disp('Elements of A >= 0.2:');
loadA([loadA >= 0.2])

% Set all elements of A that are >= 0.2 to 0
loadA([loadA >= 0.2]) = 0;
disp('Modified A with elements >= 0.2 set to 0:');
disp(loadA);
