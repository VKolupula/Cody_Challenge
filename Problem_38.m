clear all
x = [1 2 2 2 3 3 7 7 93];
%%
y = unique(x);

for i=1:length(y)
    z(i) = sum(x==y(i));
end

[~,s_i] = sort(z,"descend");
y = y(:,s_i)