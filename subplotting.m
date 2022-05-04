%% Subplots
set(0,'defaulttextinterpreter','latex');
set(0,'DefaultLineLineWidth', 1.25); 
set(0, 'defaultAxesTickLabelInterpreter','latex');
set(0,'defaultAxesFontSize',30);
set(0,'defaultAxesFontName', 'TeX Gyre Schola Math');
set(0,'defaulttextinterpreter','latex');
set(0, 'defaultAxesTickLabelInterpreter','latex');
set(0,'defaultAxesFontName', 'TeX Gyre Schola Math');
set(0,'defaultAxesFontSize',20);
figure(7)

% Below PS
ps(1) = subplot(3,2,1)
plot(x_omega, p_omega, '-k', 'LineWidth', 2) 
hold on
plot(x_omega(1), p_omega(1), 'or', 'MarkerFaceColor', 'r')
%xlabel('$X$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
%ylabel('$P$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
axis square
%axis([-5 5 -3.5 3.5])
%xticks([-5 -4 -3 -2 -1 0 1 2 3 4 5])
NW = [min(xlim) max(ylim)]+[diff(xlim)*0.02 -diff(ylim)*0.05];
text(NW(1),NW(2),'(b)', 'FontSize', 20)

% Below trajectories
tr(1) = subplot(3,2,2)
plot(time, x_omega, '-g', time, p_omega,'-r')
hold on
%ylabel('$X, P$ [arb. unit]', 'Interpreter', 'latex')
ytickformat('%.0f')
legend('$~X=X(\tau)$', '$~P=P(\tau)$', 'Interpreter', 'latex', 'Location', 'Southeast')
%xlabel('$\tau$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
axis square
%yticks([-5 -4 -3 -2 -1 0 1 2 3 4 5])
NW = [min(xlim) max(ylim)]+[diff(xlim)*0.02 -diff(ylim)*0.05];
text(NW(1),NW(2),'(a)', 'FontSize', 30)

% Sep PS
ps(2) = subplot(3,2,3)
plot(x_omega_plus, p_omega_plus, '-k', 'LineWidth', 2) 
hold on
plot(x_omega_plus(1), p_omega_plus(1), 'or', 'MarkerFaceColor', 'r')
%xlabel('$X$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
ylabel('$P$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
axis square
%axis([-5 5 -3.5 3.5])
%xticks([-5 -4 -3 -2 -1 0 1 2 3 4 5])
NW = [min(xlim) max(ylim)]+[diff(xlim)*0.02 -diff(ylim)*0.05];
text(NW(1),NW(2),'(d)', 'FontSize', 20)

% Sep trajectories
tr(2) = subplot(3,2,4)
plot(time, x_omega_plus, '-g', time, p_omega_plus,'-r')
hold on
ylabel('$X, P$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
ytickformat('%.0f')
legend('$~X=X(\tau)$', '$~P=P(\tau)$', 'Interpreter', 'latex', 'Location', 'Southeast')
%xlabel('$\tau$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
axis square
%axis([0 20 -5 5])
%yticks([-5 -4 -3 -2 -1 0 1 2 3 4 5])
NW = [min(xlim) max(ylim)]+[diff(xlim)*0.02 -diff(ylim)*0.05];
text(NW(1),NW(2),'(c)', 'FontSize', 30)

% Above PS
ps(3) = subplot(3,2,5)
plot(x_omega_minus, p_omega_minus, '-k', 'LineWidth', 2) 
hold on
plot(x_omega_minus(1), p_omega_minus(1), 'or', 'MarkerFaceColor', 'r')
xlabel('$X$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
%ylabel('$P$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
axis square
%axis([-5 5 -3.5 3.5])
%xticks([-5 -4 -3 -2 -1 0 1 2 3 4 5])
NW = [min(xlim) max(ylim)]+[diff(xlim)*0.02 -diff(ylim)*0.05];
text(NW(1),NW(2),'(f)', 'FontSize', 20)
%grid on

% Above trajectories
tr(3) = subplot(3,2,6)
plot(time, x_omega_minus, '-g', time, p_omega_minus,'-r')
hold on
%ylabel('$X, P$ [arb. unit]', 'Interpreter', 'latex')
ytickformat('%.0f')
legend('$~X=X(\tau)$', '$~P=P(\tau)$', 'Interpreter', 'latex', 'Location', 'Southeast')
xlabel('$\tau$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
axis square
%axis([0 20 -5 5])
%yticks([-5 -4 -3 -2 -1 0 1 2 3 4 5])
NW = [min(xlim) max(ylim)]+[diff(xlim)*0.02 -diff(ylim)*0.05];
text(NW(1),NW(2),'(e)', 'FontSize', 30)