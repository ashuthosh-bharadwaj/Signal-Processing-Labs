function X =  DTFT(x,N0,w)

X = zeros(1,length(w));

for ptr=1:length(x)
    temp=x(ptr)*exp(-1j*w*(ptr-N0));
    X=X+temp;
end

end