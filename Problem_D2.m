% Problem D.2 - Comparison of Nested Loops vs MATLAB Indexing for Matrix B
loadB1 = getfield(load("ELE532_Lab1_Data.mat"), "B");
loadB2 = getfield(load("ELE532_Lab1_Data.mat"), "B");

[r, c] = size(loadB1);

% Using nested for loops to set elements of B < 0.01 to 0
tic
for i = 1:r
    for j = 1:c
        if abs(loadB1(i, j)) < 0.01
            loadB1(i, j) = 0;
        end
    end
end
toc  % Measure the time taken

% Using MATLAB indexing to set elements of B < 0.01 to 0
tic
loadB2([abs(loadB2) < 0.01]) = 0;
toc  % Measure the time taken
