t = 0:0.0002:1;
x = zeros(length(t),1);

for g = 1:length(t)
    x(g) = sin(2*pi*10*t(g));
end
%plot(t,x,'.');
hold on;
y = quant(x,8,-1,1);
%plot(t,y);   

d = zeros(length(x),1);
for h = 1:length(x)
    d(h) = x(h) - y(h);
end
plot(t,d);