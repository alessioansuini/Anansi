function f = load_receptive_field_from_index(pars, i)

[blockname, filename] = get_blockname_and_filename_from_index(pars, i);
f = load(fullfile(pars.paths.receptive_fields, blockname, filename));
f = f.f;

end