va = 2;  
b = 2.^(1:10);
a  = primes(30);
%%

isin = ismember(va,a);
if isin == 1
    n = find(a==va);
    vb = b(n);
else
    right_bound = find(a > va, 1, 'first');
    left_bound = find(a < va, 1, 'last') ; 
    
    vb = mean([b(left_bound) b(right_bound)]);
end