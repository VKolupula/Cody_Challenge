A = randi(100,10,1);
%%
B = A;
B(:,1) = A(:,end);
B(:,end) = A(:,1);
B