% Define the alpha values
alpha_values = [1, 3, 5, 7];

% Define the time vector t
t = 0:0.01:4;

% Create a new figure for the plot
figure;
hold on;

% Loop through each alpha value and plot the function
for alpha = alpha_values
    s_alpha = @(t) exp(-2) .* exp(-alpha * t) .* cos(4*pi*t) .* u(t);
    plot(t, s_alpha(t));
end

% Add labels and title
xlabel('t');
ylabel('s_{\alpha}(t)');
title('Problem C.3: Plot of s_{\alpha}(t) for \alpha = [1, 3, 5, 7]');
legend('\alpha=1', '\alpha=3', '\alpha=5', '\alpha=7');
grid on;
hold off;
