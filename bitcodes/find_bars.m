function isThere = find_bars(str)
    parts = strsplit(str, '_');
    if numel(parts) > 1
        first = parts{1};
        if strcmp(first, 'bars')
            isThere = 1;
        else
            isThere = 0;
        end
        
     else
        isThere = 0;
    end   
end