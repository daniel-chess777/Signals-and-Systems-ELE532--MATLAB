% Define the function f(t) = e^(-t)
f = @(t) exp(-t);

% Define the time vector t = [-2, -1, 0, 1, 2]
t = -2:2;

% Evaluate the function at the specified points
f_values = f(t);

% Plot the function at these points
figure;
plot(t, f_values, 'o-'); % 'o-' creates a line plot with markers for each point
xlabel('t');
ylabel('f(t) = e^{-t}');
title('Plot of f(t) = e^{-t} for t = [-2, -1, 0, 1, 2]');
grid on;
