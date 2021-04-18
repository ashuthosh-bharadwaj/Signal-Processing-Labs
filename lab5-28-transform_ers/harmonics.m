function xt = harmonics(A,f0,P,td,fs)
F = zeros(1,length(A));
P = zeros(1,length(A));
for g = 1:length(A)
    F(g) = g*f0;
end
xt = SumofSines(A,F,P,td,fs);
end


    