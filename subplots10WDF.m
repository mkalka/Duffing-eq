%% Subplots
set(0,'defaulttextinterpreter','latex');
set(0,'DefaultLineLineWidth', 1.5); 
set(0, 'defaultAxesTickLabelInterpreter','latex');
set(0,'defaultAxesFontSize',30);
set(0,'defaultAxesFontName', 'TeX Gyre Schola Math');
set(0,'defaulttextinterpreter','latex');
set(0, 'defaultAxesTickLabelInterpreter','latex');
set(0,'defaultAxesFontName', 'TeX Gyre Schola Math');
set(0,'defaultAxesFontSize',20);

figure(1)
set(gcf,'color','w');
w0 = max([max(max(Wxxomega0));max(max(Wxxomega1)); max(max(Wxxomega2)); max(max(Wxxomega1plus)); max(max(Wxxomega1minus)); max(max(Wppomega0));max(max(Wppomega1)); max(max(Wppomega2)); max(max(Wppomega1plus)); max(max(Wppomega1minus))]);
% WF_XX Omega = 0 
xx(1) = subplot(2,5,1);
imagesc(w,t,Wxxomega0)
%xlabel('$X$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
ylabel('$\tau$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
axis square
%axis([-5 5 -3.5 3.5])
%xticks([-5 -4 -3 -2 -1 0 1 2 3 4 5])
NW = [max(xlim) max(ylim)]+[-diff(xlim)*0.19 -diff(ylim)*0.08];
text(NW(1),NW(2),'(a)', 'FontSize', 20)


%c = colorbar;
axis square;
%c.TickLabelInterpreter = 'latex';
colormap(redblue);
caxis([-w0 w0]);
%c.LineWidth = 1.5;

% WF_PP Omega = 0 
pp(1) = subplot(2,5,6);
imagesc(w,t,Wppomega0)
%xlabel('$\tau$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
axis square
%yticks([-5 -4 -3 -2 -1 0 1 2 3 4 5])
NW = [max(xlim) max(ylim)]+[-diff(xlim)*0.19 -diff(ylim)*0.08];
text(NW(1),NW(2),'(b)', 'FontSize', 20)

%w0 = max(max(Wppomega0));
% c = colorbar;
% axis square;
% c.TickLabelInterpreter = 'latex';
colormap(redblue);
caxis([-w0 w0]);
% c.LineWidth = 1.5;

% WF_XX Omega = omega1 - eps
xx(2) = subplot(2,5,2);
imagesc(w,t,Wxxomega1minus)
%xlabel('$X$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
%ylabel('$P$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
axis square
%axis([-5 5 -3.5 3.5])
%xticks([-5 -4 -3 -2 -1 0 1 2 3 4 5])
NW = [max(xlim) max(ylim)]+[-diff(xlim)*0.19 -diff(ylim)*0.08];
text(NW(1),NW(2),'(c)', 'FontSize', 20)

%w0 = max(max(Wxxomega1minus));
% c = colorbar;
% axis square;
% c.TickLabelInterpreter = 'latex';
colormap(redblue);
caxis([-w0 w0]);
% c.LineWidth = 1.5;

% WF_PP Omega = omega1 - eps
pp(2) = subplot(2,5,7);
imagesc(w,t,Wppomega1minus)
%ylabel('$X, P$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
%ytickformat('%.0f')
%legend('$~X=X(\tau)$', '$~P=P(\tau)$', 'Interpreter', 'latex', 'Location', 'Southeast')
%xlabel('$\tau$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
axis square
%axis([0 20 -5 5])
%yticks([-5 -4 -3 -2 -1 0 1 2 3 4 5])
NW = [max(xlim) max(ylim)]+[-diff(xlim)*0.19 -diff(ylim)*0.08];
text(NW(1),NW(2),'(d)', 'FontSize', 20)

%w0 = max(max(Wppomega1minus));
% c = colorbar;
% axis square;
% c.TickLabelInterpreter = 'latex';
colormap(redblue);
caxis([-w0 w0]);
% c.LineWidth = 1.5;

% WF_XX Omega = omega1
xx(3) = subplot(2,5,3);
imagesc(w,t,Wxxomega1)
axis square
%axis([-5 5 -3.5 3.5])
%xticks([-5 -4 -3 -2 -1 0 1 2 3 4 5])
NW = [max(xlim) max(ylim)]+[-diff(xlim)*0.19 -diff(ylim)*0.08];
text(NW(1),NW(2),'(e)', 'FontSize', 20)
%grid on

%w0 = max(max(Wxxomega1));
% c = colorbar;
% axis square;
% c.TickLabelInterpreter = 'latex';
colormap(redblue);
caxis([-w0 w0]);
% c.LineWidth = 1.5;

% WF_PP Omega = omega1
pp(3) = subplot(2,5,8);
imagesc(w,t,Wppomega1)
axis square
xlabel('$\omega$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
%axis([0 20 -5 5])
%yticks([-5 -4 -3 -2 -1 0 1 2 3 4 5])
NW = [max(xlim) max(ylim)]+[-diff(xlim)*0.19 -diff(ylim)*0.08];
text(NW(1),NW(2),'(f)', 'FontSize', 20)

%w0 = max(max(Wppomega1));
% c = colorbar;
% axis square;
% c.TickLabelInterpreter = 'latex';
colormap(redblue);
caxis([-w0 w0]);
% c.LineWidth = 1.5;

% WF_XX Omega = omega1 + eps
xx(4) = subplot(2,5,4);
imagesc(w,t,Wxxomega1plus)
axis square
%axis([-5 5 -3.5 3.5])
%xticks([-5 -4 -3 -2 -1 0 1 2 3 4 5])
NW = [max(xlim) max(ylim)]+[-diff(xlim)*0.19 -diff(ylim)*0.08];
text(NW(1),NW(2),'(g)', 'FontSize', 20)

%w0 = max(max(Wxxomega1plus));
% c = colorbar;
% axis square;
% c.TickLabelInterpreter = 'latex';
colormap(redblue);
caxis([-w0 w0]);
% c.LineWidth = 1.5;

% WF_PP Omega = omega1 + eps
pp(4) = subplot(2,5,9);
imagesc(w,t,Wppomega1plus)
axis square
%axis([0 20 -5 5])
%yticks([-5 -4 -3 -2 -1 0 1 2 3 4 5])
NW = [max(xlim) max(ylim)]+[-diff(xlim)*0.19 -diff(ylim)*0.08];
text(NW(1),NW(2),'(h)', 'FontSize', 20)

%w0 = max(max(Wppomega1plus));
% % c = colorbar;
% % axis square;
% % c.TickLabelInterpreter = 'latex';
colormap(redblue);
caxis([-w0 w0]);
% % c.LineWidth = 1.5;

% WF_XX Omega = omega2
xx(5) = subplot(2,5,5);
imagesc(w,t,Wxxomega2)
axis square
%axis([-5 5 -3.5 3.5])
%xticks([-5 -4 -3 -2 -1 0 1 2 3 4 5])
NW = [max(xlim) max(ylim)]+[-diff(xlim)*0.19 -diff(ylim)*0.08];
text(NW(1),NW(2),'(i)', 'FontSize', 20)
%grid on

%w0 = max(max(Wxxomega2));
% c = colorbar;
% axis square;
% c.TickLabelInterpreter = 'latex';
colormap(redblue);
caxis([-w0 w0]);
% c.LineWidth = 1.5;

% WF_PP Omega = omega2
pp(5) = subplot(2,5,10);
imagesc(w,t,Wppomega2)
axis square
%axis([0 20 -5 5])
%yticks([-5 -4 -3 -2 -1 0 1 2 3 4 5])
NW = [max(xlim) max(ylim)]+[-diff(xlim)*0.19 -diff(ylim)*0.08];
text(NW(1),NW(2),'(j)', 'FontSize', 20)

%w0 = max(max(Wppomega2));
% c = colorbar;
% axis square;
% c.TickLabelInterpreter = 'latex';
colormap(redblue);
caxis([-w0 w0]);
% c.LineWidth = 1.5;

xx(1).LineWidth = 1.5;
xx(2).LineWidth = 1.5;
xx(3).LineWidth = 1.5
xx(4).LineWidth = 1.5;
xx(5).LineWidth = 1.5;

pp(1).LineWidth = 1.5;
pp(2).LineWidth = 1.5;
pp(3).LineWidth = 1.5;
pp(4).LineWidth = 1.5;
pp(5).LineWidth = 1.5;

xx(1).YDir= 'normal';
xx(2).YDir= 'normal';
xx(3).YDir= 'normal';
xx(4).YDir= 'normal';
xx(5).YDir= 'normal';

pp(1).YDir= 'normal';
pp(2).YDir = 'normal';
pp(3).YDir = 'normal';
pp(4).YDir= 'normal';
pp(5).YDir = 'normal';