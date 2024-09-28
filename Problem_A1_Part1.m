% Define the function f(t) = e^(-t) * cos(2*pi*t)
f = @(t) exp(-t) .* cos(2*pi*t);

% Define time vector t for [-2, -1, 0, 1, 2]
t = -2:2;

% Plot the function f(t)
figure;
plot(t, f(t), 'o-'); % 'o-' creates a line plot with markers for each point
xlabel('t');
ylabel('f(t) = e^{-t} \cdot cos(2\pi t)');
title('Figure 1.46: Plot of f(t) = e^{-t} \cdot cos(2\pi t) for t = [-2, -1, 0, 1, 2]');
grid on;
