[y,Fs] = audioread('sp.wav');
duration = (7054/8000);
%disp(duration);
bits = (128000/8000);
%disp(bits);

sound(y);
