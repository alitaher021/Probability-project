N = 1000;
x = zeros(1);
x(1) = 0; %origin x value%
y = zeros(1);
y(1) = 0; %origin y value%
for i = 2:N
    theta = rand;
    Rand = rand;
    step_size = 0;
    angle = 0;
    % for step size
    if Rand <= 0.333
        step_size = 0.5;
    elseif Rand > 0.666
        step_size = 1;
    else
        step_size = 0;
    end
    % for angle
    if theta <= 0.25
        angle = 0;
    elseif theta > 0.25 && theta <= 0.5
        angle = 90;
    elseif theta > 0.5 && theta <= 0.75
        angle = 180;
    else
        angle = 270;
    end
    change_in_x = (step_size * cosd(angle)) + x(i-1);
    change_in_y = (step_size * sind(angle)) + y(i-1);
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