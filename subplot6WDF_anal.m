%% Subplots
set(0,'defaulttextinterpreter','latex');
set(0,'DefaultLineLineWidth', 1.25); 
set(0, 'defaultAxesTickLabelInterpreter','latex');
set(0,'defaultAxesFontSize',30);
set(0,'defaultAxesFontName', 'TeX Gyre Schola Math');
set(0,'defaulttextinterpreter','latex');
set(0, 'defaultAxesTickLabelInterpreter','latex');
set(0,'defaultAxesFontName', 'TeX Gyre Schola Math');
set(0,'defaultAxesFontSize',30);

figure(1)
set(gcf,'color','w');
w0 = max([max(max(wpp_above)); max(max(wpp_below_minus));max(max(wpp_below_plus)); max(max(wxx_above)); max(max(wxx_below_minus)); max(max(wxx_below_plus))]);
% Below PS
xx(1) = subplot(2,3,1);
imagesc(w,t,wxx_below_minus')

ylabel('$\tau$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)

NW = [max(xlim) max(ylim)]+[-diff(xlim)*0.19 -diff(ylim)*0.08];
text(NW(1),NW(2),'(a)', 'FontSize', 30)

axis square;
colormap(redblue);
caxis([-w0 w0]);

% Below trajectories
pp(1) = subplot(2,3,4);
imagesc(w,t,wpp_below_minus');

axis square;
NW = [max(xlim) max(ylim)]+[-diff(xlim)*0.19 -diff(ylim)*0.08];
text(NW(1),NW(2),'(b)', 'FontSize', 30);

colormap(redblue);
caxis([-w0 w0]);

% Sep PS
xx(2) = subplot(2,3,2);
imagesc(w,t,wxx_above');

axis square;

NW = [max(xlim) max(ylim)]+[-diff(xlim)*0.19 -diff(ylim)*0.08];
text(NW(1),NW(2),'(c)', 'FontSize', 30);

colormap(redblue);
caxis([-w0 w0]);

% Sep trajectories
pp(2) = subplot(2,3,5);
imagesc(w,t,wpp_above');
xlabel('$\omega$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30);
axis square;
NW = [max(xlim) max(ylim)]+[-diff(xlim)*0.19 -diff(ylim)*0.08];
text(NW(1),NW(2),'(d)', 'FontSize', 30);

colormap(redblue);
caxis([-w0 w0]);


% Above PS
xx(3) = subplot(2,3,3);
imagesc(w,t,wxx_below_plus');

NW = [max(xlim) max(ylim)]+[-diff(xlim)*0.19 -diff(ylim)*0.08];
text(NW(1),NW(2),'(e)', 'FontSize', 30);

axis square;

colormap(redblue);
caxis([-w0 w0]);

% Above trajectories
pp(3) = subplot(2,3,6);
imagesc(w,t,wpp_below_plus');
axis square;
NW = [max(xlim) max(ylim)]+[-diff(xlim)*0.19 -diff(ylim)*0.08];
text(NW(1),NW(2),'(f)', 'FontSize', 30);

colormap(redblue);
caxis([-w0 w0]);

xx(1).LineWidth = 1.5;
xx(2).LineWidth = 1.5;
xx(3).LineWidth = 1.5;


pp(1).LineWidth = 1.5;
pp(2).LineWidth = 1.5;
pp(3).LineWidth = 1.5;


xx(1).YDir= 'normal';
xx(2).YDir= 'normal';
xx(3).YDir= 'normal';


pp(1).YDir= 'normal';
pp(2).YDir = 'normal';
pp(3).YDir = 'normal';