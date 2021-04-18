function y=partialFourierSum(A,T,t)
y=zeros(size(t));
N=(length(A)-1)/2;
w0=2*pi/T;
for k=-N:N
    y=y+A(k+N+1)*exp(1i*k*w0*t);
end