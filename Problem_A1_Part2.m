% Define the function f(t)
f = @(t) exp(-t) .* cos(2*pi*t);

% Define the time vector
t = -2:0.01:2;

% Plot the function f(t)
figure;
plot(t, f(t));
xlabel('t');
ylabel('f(t) = e^{-t} \cdot cos(2\pi t)');
title('Figure 1.47: Plot of f(t) = e^{-t} \cdot cos(2\pi t) for t = [-2, 2]');
grid on;
