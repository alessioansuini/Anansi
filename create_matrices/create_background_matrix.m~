%% create background matrix

% Creates a matrix (n_neurons * n_bitcodes) of 
% the backgrounds separated for each bitcode

init_analysis
n = size(I,1);
tin = 50;
B = zeros(n, 342);

for i = 1: n
    [~, B(i,:)] = compute_backgrounds(pars, i, tin);    
    fprintf([num2str(i), '/', num2str(n), '\n'])
end

save(fullfile(paths.dropbox, 'B.mat'), 'B')