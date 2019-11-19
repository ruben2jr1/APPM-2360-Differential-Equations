function dydt = szrMM(t, y, alpha, beta, gamma, N0,c)
% Evaluates the right hand side of the SZR model for equations S(t) and Z(t).
% Here, y(t) = [S(t); Z(t)], so y(1) = S(t) and y(2) = Z(t).
if t<25 
    dydt = [-beta*y(1)*y(2) ;
    beta*y(1)*y(2) + gamma*(N0 - y(1) - y(2)) - (alpha)*y(1)*y(2)];
elseif t>25
    dydt = [ 0 ;
    -c*y(2) + .00001*10^4 ];
end

end