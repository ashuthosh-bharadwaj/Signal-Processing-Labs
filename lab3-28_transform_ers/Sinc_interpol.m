
function xr = Sinc_interpol(n,xn,Ts,t_fine)
% n - the integer locations of the samples x[n]
% xn - the sampled signal x[n] = x(n*Ts)
% Ts - the sampling interval
% t_fine - the time-grid for reconstruction of xr
% xr - the reconstructed signal over the time-grid t_fine
   
ws = (2*pi)/Ts ;
wc = ws/2;
   xr = zeros(length(t_fine),1);
xr_1 = zeros(n,length(t_fine));
for k = 1:n
    for g = 1:length(t_fine)
        xr_1(k,g) = xn(k)*sinc((wc/pi)*(t_fine(g) - k*Ts));
    end
end
a = (Ts*(pi/wc))ones(1,n);
xr = a*(xr_1);

end


    
        
