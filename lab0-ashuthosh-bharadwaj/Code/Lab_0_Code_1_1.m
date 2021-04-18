%n = 1000 points
x = linspace(-10,10,1000);

c = zeros(1000);
for g = 1:1000
    if x(g) < 2
        c(g) = 0;
    else 
        c(g) = 1;
    end
end
plot(x,c)
title("Plot of U(x-2) with n=1000 sample points")
legend({'y = u(x-2)'},'Location','northwest')
xlabel('-10<=x <=10')



