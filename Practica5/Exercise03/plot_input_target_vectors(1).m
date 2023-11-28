function plot_input_target_vectors(fig, P, T)

figure(fig)

T_unique = unique(T);

% plot_input_target_vectors
plot(P(1,T==T_unique(1)),P(2,T==T_unique(1)),'r+','MarkerSize',6,'LineWidth',2);
hold on;
plot(P(1,T==T_unique(2)),P(2,T==T_unique(2)),'bo','MarkerSize',6,'LineWidth',2);
hold off;
xlim([floor(min(P(1,:)))-1 ceil(max(P(1,:)))+1])
ylim([floor(min(P(2,:)))-1 ceil(max(P(2,:)))+1])

grid on;