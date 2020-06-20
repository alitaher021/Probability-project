N = 100;
x = zeros(1);
x(1) = 0; %origin x value%
y = zeros(1);
y(1) = 0; %origin y value%
for i = 2:N
    theta = rand;
    step_size = rand;
    change_in_x = (step_size * cosd(theta*360)) + x(i-1);
    change_in_y = (step_size * sind(theta*360)) + y(i-1);
    if sqrt((change_in_x - x(1))^2 + (change_in_y - y(1))^2) <= 100
        x(i) = change_in_x;
        y(i) = change_in_y;
    else
        x(i) = x(i-1);
        y(i) = y(i-1);
    end
end
ylabel("position")
xlabel("Step_count")
title("Random Walk")
plot(x, y,'-ob')