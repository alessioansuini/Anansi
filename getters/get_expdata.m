function expdata = get_expdata(blockdata, show)

    % select chunk of the experiment (the 2nd protocol)    
   
    BCODE_original = blockdata.BCODE;
    TBCOD_original = blockdata.TBCOD;
    
    bitcodes = unique(BCODE_original);
    fprintf('N.of bitcodes = %d (342 + 1 expected )\n',numel(bitcodes));

    T = max(TBCOD_original) - min(TBCOD_original);
    T = roundsd(T/3600,3);
    fprintf('Duration recording = %f hours\n',T);

    %% chunk
    
    expdata = struct();
    
    blockdata.T_START=0;

    %select bitcodes and their times within TSTART and T_END

    indexes1 = find(TBCOD_original > blockdata.T_END);
    indexes2 = find(TBCOD_original > blockdata.T_START);
    indexes = intersect(indexes1, indexes2);

    expdata.TBITCODES = TBCOD_original(indexes);
    expdata.BITCODES = BCODE_original(indexes);


    %find indexes where a positive change in bitcode occurs
    %signals the stimulus start

    ind_start = find(diff(expdata.BITCODES) >= 1);

    %times of stimuli start

    expdata.STIM_START = expdata.TBITCODES(ind_start);

    %bitcode of the stimulus at the time when the stimulus starts

    expdata.BIT_START = expdata.BITCODES(ind_start+1);

    %indexes when a negative change in bitcode occurs
    %signals the stimulus stop

    ind_stop = find(diff(expdata.BITCODES)<=-1);

    expdata.STIM_STOP = expdata.TBITCODES(ind_stop);

    expdata.BIT_STOP = expdata.BITCODES(ind_stop);


    if unique(expdata.BIT_START - expdata.BIT_STOP) ~= 0
        error('check the BIT conversion')
    end
  
    if show
        
        figure
        plot(TBCOD_original, BCODE_original)
        hold on
        plot([blockdata.T_END blockdata.T_END], [0 max(bitcodes)], '--r')
        xlabel('time (seconds)')
        ylabel('bitcode')
      
    end


end