function d = delta(n)
%delta Summary of this function goes here
%   function generates impulse signal
d = dirac(n);
d(d==Inf)=1;
end