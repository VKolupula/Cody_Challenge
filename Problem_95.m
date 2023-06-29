s1 = [1 2 3 4 5];
s2 = [5 4 3 2];

len = [length(s1) length(s2)];
s3 = [];
if ismember(s1,s2)
    s3 = comOverlap(s1,s2,min(len),max(len));
elseif ismember(s2,s1)
    s3 = comOverlap(s2,s1,min(len),max(len));
end

if isempty(s3)   
    s1_s2 = endOverlap(s1,s2,min(len));
    s2_s1 = endOverlap(s2,s1,min(len));
    
    if length(s1_s2)>length(s2_s1) && ~isempty(s2_s1) || isempty(s1_s2)
        s3 = s2_s1;
    else
        s3 = s1_s2;
    end
end
s3
clear all

function x_y = comOverlap(x,y,min,max)
    for i = 1:max-min+1
        if y(i:min-1+i) == x
            x_y = y;
            break
        elseif i == max-min+1
            x_y = [];
        end
    end
end

function x_y = endOverlap(x,y,z)
    x_y = [];
    for i = 1:z
       if x(end+1-i:end) == y(1:i)
            x_y = [x(1:end) y(1+i:end)];
       end
    end
end