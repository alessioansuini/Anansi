% create backgrounds

init_analysis
n = size(I,1);
lambdas = zeros(n,1);
tin = 50;

for i = 1: n
    [ns, nscondition] = compute_backgrounds(pars, i, tin)
    backgrounds = compute_backgrounds(pars, i, tin);
    f = fit_backgrounds(backgrounds, 0);
    lambdas(i) = f.lambda;
    fprintf([num2str(i), '/', num2str(n), '\n'])
end






