function ak= FourierCoeff(N,T,t,xt,a,b)
ak=zeros(2*N+1,1);
w0=2*(pi/T);
for k=1:2*N+1
    expr=(1/T) * xt*exp(-1*i*(k-N-1)*w0*t);
    ak(k,1)=int(expr,t,a,b);
end
end