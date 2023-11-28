% ejemplo plot_decision_surface(fig, model, data, 0.5, 'rbg')
function plot_decision_surface(fig, model, data, resolution, color)

figure(fig)

x1range = min(data(:,1)):resolution:max(data(:,1));
x2range = min(data(:,2)):resolution:max(data(:,2));
[xx1, xx2] = meshgrid(x1range,x2range);
XGrid = [xx1(:) xx2(:)];

predictions = predict(model,XGrid);
gscatter(xx1(:), xx2(:), predictions, color);
