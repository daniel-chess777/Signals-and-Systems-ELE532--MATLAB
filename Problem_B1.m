% Problem B.1 - Plotting p(t) = u(t) - u(t - 1)
t = [-1:0.02:9];  % Time vector
p = @(t) 1.0.*((t>=0) & (t<1));  % Define p(t)

% Plot p(t)
figure(1);
plot(t, p(t));
title('Figure B.1 - p(t) = u(t) - u(t - 1)');
xlabel('t');
ylabel('p(t)');
axis([-1 2 -0.1 1.1]);  % Adjust axis as needed
grid on;
