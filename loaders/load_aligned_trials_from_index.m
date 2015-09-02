function aligned_trials = load_aligned_trials_from_index(pars, i)

[blockname, filename] = get_blockname_and_filename_from_index(pars, i);
aligned_trials = load(fullfile(pars.paths.alignedTrials, blockname, filename));
aligned_trials = aligned_trials.aligned_trials;


end