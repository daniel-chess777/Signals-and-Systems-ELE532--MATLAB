% Problem B.3 - Plotting n1(t) and n2(t)
t = [-1:0.02:9];  % Time vector
p = @(t) 1.0.*((t>=0) & (t<1));  % Define p(t)
r = @(t) t.*p(t);  % Define r(t)
n = @(t) r(t) + r(-t + 2);  % Define n(t)

n1 = @(t) n(0.5 * t);  % Define n1(t)
n2 = @(t) n1(t + 0.5);  % Define n2(t)

% Plot n1(t)
figure(4);
plot(t, n1(t));
title('Figure B.3 - n1(t)');
xlabel('t');
ylabel('n1(t)');
axis([-1 4 -0.1 1.1]);
grid on;

% Plot n2(t)
figure(5);
plot(t, n2(t));
title('Figure B.3 - n2(t)');
xlabel('t');
ylabel('n2(t)');
axis([-1 4 -0.1 1.1]);
grid on;
