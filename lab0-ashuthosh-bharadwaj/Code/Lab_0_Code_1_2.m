%n = 50 points
x = linspace(-10,10,50);

c = zeros(50);
for g = 1:50
    if x(g) < 2
        c(g) = 0;
    else 
        c(g) = 1;
    end
end
plot(x,c)
title("Plot of U(x-2) with n=50 sample points")
legend({'y = u(x-2)'},'Location','northwest')
xlabel('-10<=x <=10')