[coord] = ginput;
for i = 1:length(coord)
    dist = sqrt(sum(bsxfun(@minus,peakstuff,coord(i)).^2,2));
    closest = peakstuff(find(dist==min(dist)),:);
    del = find(peakstuff(:,1) == closest(:,1));
    peakstuff(del ,:) = [];
end