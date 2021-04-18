function y = quant(x,L,a,b)
y = zeros(length(x),1);
for g = 1:length(x)
    for h = 1:L
    if x(g) <= (a + h*((b-a)/L))
        y(g) =  a + (2*h -1)*((b-a)/(2*L));
        break;
    end
    end
end
