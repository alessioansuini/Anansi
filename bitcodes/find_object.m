function isThere = find_object(str)
    parts = strsplit(str, '_');
    if numel(parts) > 1
        first = parts{1};
        if strcmp(first, 'obj')
            isThere = 1;
        else
            isThere = 0;
        end
        
     else
        isThere = 0;
    end   
end