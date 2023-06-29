s1 = 'god';
s2 = 'dog';
row=0;
%%
is_s1_longer = length(s1) > length(s2);
is_s2_longer = length(s1) < length(s2);
%%
if is_s1_longer
    matrix_x = zeros(length(s1)+2);
else
    matrix_x = zeros(length(s2)+2);
end
%%
for i= 1:length(s1)    
    matrix_x(1,i+2) = s1(i);    
end
for i= 1:length(s2)    
    matrix_x(i+2,1) = s2(i);    
end

matrix_x(2,2:end) = (0:(length(matrix_x)-2));
matrix_x(2:end,2) = (0:(length(matrix_x)-2));

char(matrix_x);
%%
for i_m = 1:length(s2)     
    for i = 1:length(matrix_x)-2          
        if matrix_x(3+row,1) == matrix_x(1,i+2)
            matrix_x(3+row,i+2) = matrix_x(2+row,i+1);            
        else            
            test = [matrix_x(3+row,i+1) matrix_x(2+row,i+1) matrix_x(2+row,i+2)];
            matrix_x(3+row,i+2) = min(test)+1;
        end
    end
    row = row+1;
end
d = matrix_x(length(s2)+2,length(s1)+2);