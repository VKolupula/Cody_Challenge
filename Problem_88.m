str_list = {'one two three','two one four zero'};

str_join = split(join(str_list))';
word_table = sort(unique(str_join));

for i = 1:length(str_list)
    spl_list = split(str_list(i));
    count = 1;
    for j = 1:length(spl_list)
        a = cell2mat(spl_list(j));
        for k = 1:length(word_table)
            b = cell2mat(word_table(k));
            if strcmp(a,b)
                cell(count) = k;
                count = count+1;
            end
        end
        str_index_list{i} = cell;
    end    
end

str_index_list;
word_table;
