% Problem B.4 - Plotting n3(t) and n4(t)
t = [-1:0.02:9];  % Time vector
p = @(t) 1.0.*((t>=0) & (t<1));  % Define p(t)
r = @(t) t.*p(t);  % Define r(t)
n = @(t) r(t) + r(-t + 2);  % Define n(t)

n3 = @(t) n(t + 0.25);  % Define n3(t)
n4 = @(t) n3(0.5 * t);  % Define n4(t)

% Plot n3(t)
figure(6);
plot(t, n3(t));
title('Figure B.4 - n3(t)');
xlabel('t');
ylabel('n3(t)');
axis([-1 4 -0.1 1.1]);
grid on;

% Plot n4(t)
figure(7);
plot(t, n4(t));
title('Figure B.4 - n4(t)');
xlabel('t');
ylabel('n4(t)');
axis([-1 4 -0.1 1.1]);
grid on;
