%{
Do partial Fourier sum reconstruction of square wave using the function
“partialfouriersum” and plot it. Use T1 = 0.1, T = 1, t = -0.5:0.01:0.5, N = 10. Repeat this
as N is increased (N = 50,100,1000) and note your observations.
%}

J = [10,50,100,1000];
for s = 1:4
    t = -0.5:0.01:0.5 ;
    N = J(s);
    T =1;
    T1 = 0.1;
    A = zeros(2*N +1,1);
  
    for g = 1:(2*N +1)
        if g ~= n+1 
              A(g) = (2*T1/T)*(sin(2*pi*(g-n-1)*T1)/(2*pi*(g-n-1)*T1)) ;
        else
            A(g) = 0;
        end
    end
    if s == 4
        H = partialFourierSum(A,T,t);
        plot(t,H);
    end
    
    
end
    
    

