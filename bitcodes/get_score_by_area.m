function [scores, means, stds] = get_score_by_area(h,Classes)

% to complete


scores = zeros(6,1);
loc = {};
for i=1:6
   classes = Classes(:,i);
   tmp = cellfun(h, classes);
   loc{i} = find(tmp);    
end


loc = cell2mat(loc);

for i=1:6
   invloc = loc(:,i).^-1; 
   scores(i) = sum(invloc); 
end

scores = scores/size(loc,1);
means = mean(loc, 1);
stds = std(loc, [], 1);

%score = exp(1./means);
%score = score/max(score);


end