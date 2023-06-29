a = [2 3 4];
b=false;
%%
for i = 1:length(a)
    present = ismember(a(i)^2,a);
    if present
        b = true;
        break
    end
end
b