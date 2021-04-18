syms t;
a = -1;
b = 1;
xt = piecewise(a<=t & t<=b ,(1 - abs(t)),0);

w = -5:0.1:5;
X = continuousFT(xt,t,a,b,w);
plot(w,X); 





function C = HPF(A,F,wc,B);
 for g = 1:2*N+1
     C(g) = A(g)-B(g);
 end
end
