function plot_decision_boundary(fig, net, color)


figure(fig)

% plot_input_target_vectors
linehandle = plotpc(net.IW{1},net.b{1});
set(linehandle, 'Color', color, 'LineWidth', 1);
