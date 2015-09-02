function isThere = find_dots(str)
    parts = strsplit(str, '_');
    if numel(parts) > 1
        first = parts{1};
        if strcmp(first, 'dots')
            isThere = 1;
        else
            isThere = 0;
        end
        
     else
        isThere = 0;
    end   
end