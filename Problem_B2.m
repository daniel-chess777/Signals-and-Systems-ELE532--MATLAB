% Problem B.2 - Plotting r(t) and n(t)
t = [-1:0.02:9];  % Time vector
p = @(t) 1.0.*((t>=0) & (t<1));  % Define p(t)
r = @(t) t.*p(t);  % Define r(t)
n = @(t) r(t) + r(-t + 2);  % Define n(t)

% Plot r(t)
figure(2);
plot(t, r(t));
title('Figure B.2 - r(t) = t p(t)');
xlabel('t');
ylabel('r(t)');
axis([-1 2 -0.1 1.1]);
grid on;

% Plot n(t)
figure(3);
plot(t, n(t));
title('Figure B.2 - n(t) = r(t) + r(-t + 2)');
xlabel('t');
ylabel('n(t)');
axis([-1 2 -0.1 1.1]);
grid on;
