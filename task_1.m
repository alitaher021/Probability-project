n = 10;
x = zeros(1);
x(1) = 0; %start value%
for i = 2:n
    R = rand;
    if R <= (1/3)
        x(i) = -1 + x(i-1);
    elseif R > (2/3)
        x(i) = 1 + x(i-1);
    elseif R > (1/3) && R <= (2/3)
        x(i) = x(i-1);
    end
    fprintf('The person is %d km from home\n', x(i));
end
ylabel("position")
xlabel("Step_count")
title("Random Walk")
plot(x,'-or')