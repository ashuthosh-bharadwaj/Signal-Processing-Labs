A = [1 5 ; 9  13] ;
A(:,:,2) = [3 7 ;11 15] ;

C = ((squeeze(A(1,:,:))));
D = ((squeeze(A(2,:,:))));
F =  (1/2)*(C+D);
disp(F)