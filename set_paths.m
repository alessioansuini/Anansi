function paths = set_paths()

    paths = struct();  
    
    userdir = getuserdir;
    % github repository (code)
    
    paths.home = fullfile(userdir, 'Repositories', 'Anansi');
    
    % dropbox (some data)
    
    paths.dropbox = fullfile(userdir, 'Dropbox', 'Anansi');
    
    % tables
    
    paths.table = fullfile(paths.dropbox,'table.mat');   
    paths.I = fullfile(paths.dropbox,'Indexing.mat'); 
                
    % to raw data (on NAS 1)
    
    paths.rawdata = fullfile('/Volumes','spikeSorting', 'Data', 'Federica');
    
    % external data I (on VisionLab Server, data that will not change)
    
    externaldata = fullfile('/Volumes', 'ansuini', 'Projects', 'Data', 'Anansi');
    
    paths.sorted_data = fullfile(externaldata, 'spikeStructures');
    paths.neurons_data = fullfile(externaldata, 'neuronsStructures'); 
    
    paths.receptive_fields = fullfile(externaldata, 'receptive_fields');
    paths.spiketimes = fullfile(externaldata, 'spiketimes');
    paths.waveforms = fullfile(externaldata, 'waveforms');
    paths.snr = fullfile(externaldata, 'snr');
          
    
    dropboxdata = fullfile(paths.dropbox, 'data');
    
    % external data II (on Dropbox)
    
    paths.rfquality = fullfile(dropboxdata, 'rfquality');
    paths.alignedTrials = fullfile(dropboxdata, 'alignedTrials');
    %paths.psths = fullfile(dropboxdata, 'psths');
    %paths.firingRates = fullfile(dropboxdata, 'firingRates');
    %paths.tuning =  fullfile(dropboxdata, 'tuning');
     
    % to results
     
    paths.results = fullfile(paths.dropbox, 'results');
              
    % data collected while exploring neurons
     
    paths.gui_exploration = fullfile(paths.dropbox, 'results', 'gui_exploration');
    
    % to Tanks
    
    paths.Tanks = fullfile('/Volumes', 'chronic_inv_rec', 'Tanks');
    
end





