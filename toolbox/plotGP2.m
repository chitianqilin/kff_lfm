function plotGP2(gpmean, gpvar, gpx, ytrain, xtrain, ytest, xtest)

fillColor = [0.8 0.8 0.8];
gpSd = sqrt(gpvar);

f = [gpmean+2*gpSd; flipdim(gpmean-2*gpSd,1)];
  fill([gpx; flipdim(gpx,1)], f, [7 7 7]/8)
  hold on; 
%   plot(gpx, gpmean); 
%   
% fill([gpx; gpx(end:-1:1)], ...
%     [gpmean; gpmean(end:-1:1)] ...
%     + 2*[gpSd; -gpSd(end:-1:1)], ...
%     fillColor,'EdgeColor',fillColor)
% hold on;
h = plot(gpx, gpmean, '-k');
set(h, 'linewidth', 2)
if nargin > 3,
    %p = plot(xtrain, ytrain, 'o', 'MarkerEdgeColor','k','MarkerFaceColor','w');
    %set(p, 'markersize', 4);
    plot(xtrain, ytrain, '.m','markersize',12);
end
if nargin > 5,
    plot(xtest, ytest, '.b','markersize', 12);
end
hold off;