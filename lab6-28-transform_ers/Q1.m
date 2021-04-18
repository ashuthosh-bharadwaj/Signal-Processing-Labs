
N = -500:1:500 ;
w = -10:0.01:10
N0=(length(N)+1)/2;
% Signal 1
x=zeros(1,length(N));
x(N0)=1;
X=DTFT(x,N0,w);
subplot(2,2,1)
plot(w,abs(X));
subplot(2,2,2);
plot(w,angle(X));
subplot(2,2,3)
plot(w,real(X));
subplot(2,2,4)
plot(w,imag(X));



%Signal 2 
y = zeros(1,length(N));
y(N0+5) = 1;
Y = DTFT(y,N0,w);
subplot(2,2,1)
plot(w,abs(Y));
subplot(2,2,2)
plot(w,angle(Y));
subplot(2,2,3)
plot(w,real(Y));
subplot(2,2,4)
plot(w,imag(Y));


%Signal 3

f = zeros(1,length(N));
for d = 1:length(N)
    if d >= -5+N0 & d <= N0+5
        f(d) = 1;
    end    
end

F = DTFT(f,N0,w);
subplot(2,2,1)
plot(w,abs(F));
subplot(2,2,2)
plot(w,angle(F));
subplot(2,2,3)
plot(w,real(F));
subplot(2,2,4)
plot(w,imag(F));

%Signal 4
l = zeros(1,length(N));
for d = 1:length(N)
    if d >= N0 & d <= N0+10
        l(d) = 1;
    end    
end

L = DTFT(f,N0,w);
subplot(2,2,1)
plot(w,abs(L));
subplot(2,2,2)
plot(w,angle(L));
subplot(2,2,3)
plot(w,real(L));
subplot(2,2,4)
plot(w,imag(L));


%Signal 5
 
q = zeros(1,length(N));

for g = 1: length(N)
    q(g) = sin((pi*(g-N0)/3));    
end

Q = DTFT(q,N0,w);
subplot(2,2,1)
plot(w,abs(Q));
subplot(2,2,2)
plot(w,angle(Q));
subplot(2,2,3)
plot(w,real(Q));
subplot(2,2,4)
plot(w,imag(Q));

%This is the C part
n=1:501;
N_0=1;
a=0.1
x=zeros(1,length(n));
y=zeros(1,length(n));
for ptr=1:length(n)
    x(ptr)=a^ptr;
    y(ptr)=(-a)^ptr
end
X=DTFT(x,N0,w);
Y=DTFT(y,N0,w);
X=DTFT(x,N0,w)
subplot(2,2,1)
plot(n,x);
subplot(2,2,2)
plot(n,y);
subplot(2,2,3)
plot(w,X);
subplot(2,2,4)
plot(w,Y);