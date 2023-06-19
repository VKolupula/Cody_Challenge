A = [    0     1     1     0
         1     1     1     0
         0     0     1     0
         0     0     0     0];
%%
[m,n] = size(A);
B = zeros(m,n);
eA = zeros(m+2,n+2);
for i = 1:m
    eA(i+1,2:end-1) = A(i,:);
end
eA(1,2:end-1) = A(end,:);
eA(2:end-1,1) = A(:,end);
eA(end,2:end-1) = A(1,:);
eA(2:end-1,end) = A(:,1);

%%
for i = 1:m    
    for j = 1:n         
        count = eA(i,j)+eA(i,j+1)+eA(i,j+2)+eA(i+1,j)+eA(i+1,j+2)+eA(i+2,j)+eA(i+2,j+1)+eA(i+2,j+2);
        if count < 2
            B(i,j) = 0;
        elseif count >= 2 && count < 4
            if eA(i+1,j+1) == 0 && count ~= 3
                B(i,j) = 0;
            else
                B(i,j) = 1;
            end
        else
            B(i,j) = 0;            
        end
    end
end
B