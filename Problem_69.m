nmax = 9998;
i_m=1;
n=1;
nlist = 0;
%%
for i = 1:nmax    
    while true           
        remainder = mod(n,2);    
        if n == 1
            break
        else
            if remainder == 0
                 n = n/2;         
            else
                 n = 3*n+1;
            end
         nlist(1,i_m) = n;
         i_m=i_m+1;
        end        
    end
    nmaxlist(1,n) = max(nlist);
    n=i+1;
end
pmax = max(nmaxlist);