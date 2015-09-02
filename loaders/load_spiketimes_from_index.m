function spiketimes = load_spiketimes_from_index(pars, i)

[blockname, filename] = get_blockname_and_filename_from_index(pars, i);
spiketimes = load(fullfile(pars.paths.spiketimes, blockname, filename));
spiketimes = spiketimes.spiketimes;

end