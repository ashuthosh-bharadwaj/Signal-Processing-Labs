function X = continuousFT(xt,t,a,b,w)
X = zeros(length(w),1);
d = length(w);
 for k = 1:d
     expr =  xt*exp(-1*1i*w(k)*t);
     X(k,1)=int(expr,t,a,b);
 end
end
