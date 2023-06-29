x = ones(1,7);
%%
max_x = max(x);
x_u = 1:max_x;

for i = 1:length(x_u)
    count(i) = length(find(x==x_u(i)));
    y(i) = count(i)/length(x);
end
y
