p = zeros(1);
p(1) = 0; %start value%
q = zeros(1);
q(1) = 3; %start value%
i = 2;
while(p(i-1) ~= q(i-1))
    R = rand;
    if R <= 0.333
        p(i) = p(i-1) - 1;
    elseif R > 0.666
        p(i) = 1 + p(i-1);
    else
        p(i) = p(i-1);
    end
    
    R = rand;
    if R <= 0.333
        q(i) = -1 + q(i-1);
    elseif R > 0.666
        q(i) = 1 + q(i-1);
    else
        q(i) = q(i-1);
    end
    
    i = i + 1;
end

fprintf('The expected time is %d sec\n', i-1);


plot(p,"-or")
hold on
plot(q,"-ob")

