syms t;
xt = piecewise(-0.25<=t & t<= 0.25,abs(t),0);
T = 1;
T1 = 0.25;
N = 10;
F = FourierCoeff(N,T,t,xt,-T1,T1);
%disp(F)
G = zeros(length(F),1);
for s = 1:21
    G(s) = F(22-s);
end
disp(F);
disp(G);
G = G -F;
disp(G)

%The value of a_(k) and a_(-k) are the same
