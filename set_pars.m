function pars = set_pars(varargin)

    pars=struct();
    
    
    % default type stimuli 
    
    if numel(varargin) == 0
        pars.typestimuli = 'static';
    else
        pars.typestimuli = varargin{1};
    end    
    
    
    % paths
    
    pars.paths = set_paths;   
    
    
    %% CONSTANTS
    
    % blocks strings
    
    dropbox = pars.paths.dropbox;
    block_strings = load(fullfile(dropbox, 'block_strings'));
    pars.block_strings = block_strings.C;
           
    
    % Indexing
    
    I = load(fullfile(dropbox, 'I.mat'));
    I = I.I;
    pars.I = I;
    
    % Areas indexes
    
    Areas = load(fullfile(dropbox, 'Areas.mat'));
    Areas = Areas.J;
    pars.Areas = Areas;
    
    
    % Areas labels and colors
    
    pars.areas_labels = {'V1b', 'LM', 'AL', 'LI', 'LL', 'LLb'};
    pars.areas_colors = {'b', 'r', 'm', 'g', 'c', 'y'};
    
    % Bitcodes 
    
    bitcodes = load(fullfile(dropbox, 'bitcodes.mat'));
    bitcodes = bitcodes.bitcodes;
    pars.bitcodes = bitcodes;
    pars.organized_bitcodes = get_organized_bitcodes();
    
    % table
    
    table = load(fullfile(dropbox, 'table.mat'));
    table = table.table;
    pars.table = table;
     
     
    % backgrounds
             
    backgrounds = load(fullfile(dropbox, 'results', 'backgrounds', 'lambdas_black_blanks.mat'));
    backgrounds = backgrounds.lambdas;
    pars.backgrounds = backgrounds;
     
    % general
    
    pars.general.sfreq = 24414.0625;
    pars.general.nchannels = 32;
    pars.general.nNeurons = 1380;  
    pars.general.bitcodes = 1:1:342;
    pars.general.nbitcodes = 342;
    pars.general.nbitcodesRF = 264;
     
     
    % psths, firing rates and all that
    
    pars.psths.bin = 1;
    pars.fr.sw = 25;
                           
    % for the trials alignment
                    
    pars.t_before = 100; 
    pars.t_after = 250;
     
    % for the tuning
     
    pars.tuning.initial_bump = 250;
     
%   pars.tuning.gratings_and_dots.alpha = 1;
%   pars.tuning.gratings_and_dots.nsamples = 1e2;
    
     
    % stimuli
    
    pars.grats.angle = 45;
    pars.grats.thetas = 0:45:315;
    pars.grats.thetas_rad = 0 : pi/4 : (7/4)*pi;
    
    
    pars.gratsdots.tipo = [1,1,1,1,0,0,0,0,1,1,0,0];
                        
                        
    % synchronicity maps
    
    pars.synchro.minNSpikes = 1e3;
    pars.synchro.theta = 0.25;
     
    
    % sorting
    
    pars.sorting.conversionFactor = pars.general.sfreq/24414;    
    pars.sorting.nsegments = 20;   
    pars.sorting.detect_fmin = 300;
    pars.sorting.detect_fmax = 3000;
    pars.sorting.sort_fmin = 300;
    pars.sorting.sort_fmax = 3000;
    pars.sorting.minstd = 5;
    pars.sorting.maxstd = 50;
    pars.sorting.pre = 20;                   
    pars.sorting.post = 44;
    pars.sorting.ddt_ms = 1.5;
    pars.sorting.ddt_n = floor(pars.sorting.ddt_ms*pars.general.sfreq/1000); 
    pars.sorting.interpolationFactor = 2;                
                 
 
    % comparison with Federica
 
    pars.Fede.permutation = [3, 2, 1, 8, 7, 6, 5, 4];
     
    % gui
    
    pars.gui_bgcolor = [153,  153, 255]/256; 
    
    
end