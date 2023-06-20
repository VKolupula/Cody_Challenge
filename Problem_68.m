x = 1234;
%%
y = 0;    
while x ~= 6174
    x = sprintf('%04d',x);        
    n_as = sort(x,"ascend");
    n_de = sort(x,"descend");
    n_as = str2double(n_as);
    n_de = str2double(n_de);
    x = n_de-n_as;
    if x == 0
        y = inf;
        break
    end
    y = y+1;
end
y