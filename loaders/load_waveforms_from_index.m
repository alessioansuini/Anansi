function waveforms = load_waveforms_from_index(pars, i)

[blockname, filename] = get_blockname_and_filename_from_index(pars, i);
waveforms = load(fullfile(pars.paths.waveforms, blockname, filename));
waveforms = waveforms.waveforms;

end