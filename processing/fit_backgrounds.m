function f = fit_backgrounds(backgrounds, show)

f = struct();

[lambda, ~] = poissfit(backgrounds);
bins = 0:1:50;
Y = poisspdf(bins, lambda);
h = histc(backgrounds, bins);
p = h/sum(h);


f.lambda = lambda;
f.bins = bins;
f.Y = Y;
f.p = p;



if show
    figure
    hold on
    plot(bins, p, 'k')
    plot(bins, Y,'m')
end


end
