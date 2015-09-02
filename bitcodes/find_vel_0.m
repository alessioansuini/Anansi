function isThere = find_vel_0(str)
    parts = strsplit(str, '_');
    if numel(parts) > 1
        sec2last = parts{end-1};
        last = parts{end};
        if strcmp(sec2last, 'Vel') && strcmp(last, '0')
                       
            isThere = 1;
        else
            isThere = 0;
        end
    else
        isThere = 0;
    end
end