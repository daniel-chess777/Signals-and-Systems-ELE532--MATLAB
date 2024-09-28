% Define the function f(t) = e^(-2t) * cos(4*pi*t)
f = @(t) exp(-2*t) .* cos(4*pi*t);

% Define the unit step function u(t)
u = @(t) t >= 0;

% Define g(t) = f(t) * u(t)
g = @(t) f(t) .* u(t);

% Define time vector for plotting
t = -2:0.01:4; % From -2 to 4 as specified

% Plot g(t)
figure;
plot(t, g(t));
xlabel('t');
ylabel('g(t) = e^{-2t} \cdot cos(4\pi t) \cdot u(t)');
title('Problem C.1: Plot of g(t) = e^{-2t} \cdot cos(4\pi t) \cdot u(t)');
grid on;
