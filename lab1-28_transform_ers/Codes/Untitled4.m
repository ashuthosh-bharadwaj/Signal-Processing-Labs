d = zeros(1,2);
for l = 1:2
    syms t;
    T = 10^l;
    T1 = 0.1;
    N = 100*T;
    xt = piecewise(-T1<=t & t<=T1,1,0);
    G = FourierCoeff(N,T,t,xt,-T,T);
    disp(G)
    %d(l) = sum(G,'all'); 
end
plot(1:2,d)
    

