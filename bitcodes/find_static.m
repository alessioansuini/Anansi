function isThere = find_static(str)
    parts = strsplit(str, '_');
    if numel(parts) > 1
        second = parts{2};
        if strcmp(second, 'Stat')
            isThere = 1;
        else
            isThere = 0;
        end
    else
        isThere = 0;
    end
end