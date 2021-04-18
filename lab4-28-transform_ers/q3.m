[y,Fs] = audioread('sp.wav');
L = zeros(16390,1);

for h = 1:8
x = zeros(7045,1);   
x = quant(y,(2^h),-0.5,0.5);
sound(x)
pause(2);
%{
for k = 1:16000
    if k> 8000
        L(k) = sin(k/10);
    end
end

sound(L)
%}
end


