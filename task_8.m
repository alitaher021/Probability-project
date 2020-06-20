% centre of cirlce
x_centre = 0;
y_centre = 0;
% Node_1 initial positions
x1 = zeros(1);
y1 = zeros(1);
x1(1) = ((100*rand) * cosd(360*rand)) + x_centre;
y1(1) = ((100*rand) * sind(360*rand)) + y_centre;
% Node_2 initial positions
x2 = zeros(1);
y2 = zeros(1);
x2(1) = ((100*rand) * cosd(360*rand)) + x_centre;
y2(1) = ((100*rand) * sind(360*rand)) + y_centre;
i = 2;

while sqrt((x2(i-1) - x1(i-1))^2 + (y2(i-1) - y1(i-1))^2) > 1
    fprintf('The distance is %d m\n', sqrt((x2(i-1) - x1(i-1))^2 + (y2(i-1) - y1(i-1))^2));
    % for second node
    theta = rand;
    step_size = rand;
    change_in_x1 = (step_size * cosd(theta*360)) + x1(i-1);
    change_in_y1 = (step_size * sind(theta*360)) + y1(i-1);
    if sqrt((change_in_x1 - x_centre)^2 + (change_in_y1 - y_centre)^2) <= 100
        x1(i) = change_in_x1;
        y1(i) = change_in_y1;
    else
        x1(i) = x1(i-1);
        y1(i) = y1(i-1);
    end
    % for second node
    theta = rand;
    step_size = rand;
    change_in_x2 = (step_size * cosd(theta*360)) + x2(i-1);
    change_in_y2 = (step_size * sind(theta*360)) + y2(i-1);
    if sqrt((change_in_x2 - x_centre)^2 + (change_in_y2 - y_centre)^2) <= 100
        x2(i) = change_in_x2;
        y2(i) = change_in_y2;
    else
        x2(i) = x2(i-1);
        y2(i) = y2(i-1);
    end
    i = i + 1;
end
fprintf('The i is %d\n', i);
ylabel("position")
xlabel("Step_count")
title("Random Walk")
plot(x1, y1,'-or')
hold on
plot(x2, y2,'-ob')