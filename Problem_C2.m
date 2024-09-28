% Define the shifted function s(t) = g(t+1)
s = @(t) g(t+1);

% Plot s(t)
figure;
plot(t, s(t));
xlabel('t');
ylabel('s(t) = g(t+1)');
title('Problem C.2: Plot of s(t) = g(t+1)');
grid on;
