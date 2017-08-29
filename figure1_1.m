n = 0:1:40; % sample index from 0 to 20
x = sin(0.1*pi*n); % Evaluate sin(0.2 pi n)
Hs = stem(n, x, 'b', 'filled'); % Stem-plot with
set(Hs, 'markersize', 4); % Change circle size
xlabel('n'); ylabel('x(n)'); % Label axis
title('Stem Plot of sin(0.2 pi n'); % Title plot