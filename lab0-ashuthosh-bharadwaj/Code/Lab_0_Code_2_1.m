A = [1 4 7; 10 13 16; 19 22 25] ;
A(:,:,2) =  [2 5 8; 11 14 17; 20 23 26] ;
B = cat(3,A,[3 6 9; 12 15 18; 21 24 27]);

C = ((squeeze(B(1,:,:))));
D = ((squeeze(B(2,:,:))));
E = ((squeeze(B(3,:,:))));
F =  (1/3)*(C+D+E);
disp(F)





