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

% PS Omega = 0 
ps(1) = subplot(2,5,1);
plot(xomega0, pomega0, '-k', 'LineWidth', 2) 
hold on
plot(xomega0(1), pomega0(1), 'or', 'MarkerFaceColor', 'r')
%xlabel('$X$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
ylabel('$P$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
axis square
%axis([-5 5 -3.5 3.5])
%xticks([-5 -4 -3 -2 -1 0 1 2 3 4 5])
NW = [max(xlim) max(ylim)]+[-diff(xlim)*0.15 -diff(ylim)*0.08];
text(NW(1),NW(2),'(a)', 'FontSize', 20)

% TR Omega = 0 
tr(1) = subplot(2,5,6);
plot(time, xomega0, '-g', time, pomega0,'-r')
hold on
ylabel('$X, P$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
ytickformat('%.0f')
legend('$~X=X(\tau)$', '$~P=P(\tau)$', 'Interpreter', 'latex', 'Location', 'Southeast')
%xlabel('$\tau$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
axis square
%yticks([-5 -4 -3 -2 -1 0 1 2 3 4 5])
NW = [max(xlim) max(ylim)]+[-diff(xlim)*0.15 -diff(ylim)*0.08];
text(NW(1),NW(2),'(b)', 'FontSize', 20)

% PS Omega = omega1 - eps
ps(2) = subplot(2,5,2);
plot(xomega1minus, pomega1minus, '-k', 'LineWidth', 2) 
hold on
plot(xomega1minus(1), pomega1minus(1), 'or', 'MarkerFaceColor', 'r')
%xlabel('$X$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
%ylabel('$P$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
axis square
%axis([-5 5 -3.5 3.5])
%xticks([-5 -4 -3 -2 -1 0 1 2 3 4 5])
NW = [max(xlim) max(ylim)]+[-diff(xlim)*0.15 -diff(ylim)*0.08];
text(NW(1),NW(2),'(c)', 'FontSize', 20)

% TR Omega = omega1 - eps
tr(2) = subplot(2,5,7);
plot(time, xomega1minus, '-g', time, pomega1minus,'-r')
hold on
%ylabel('$X, P$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
ytickformat('%.0f')
legend('$~X=X(\tau)$', '$~P=P(\tau)$', 'Interpreter', 'latex', 'Location', 'Southeast')
%xlabel('$\tau$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
axis square
%axis([0 20 -5 5])
%yticks([-5 -4 -3 -2 -1 0 1 2 3 4 5])
NW = [max(xlim) max(ylim)]+[-diff(xlim)*0.15 -diff(ylim)*0.08];
text(NW(1),NW(2),'(d)', 'FontSize', 20)

% PS Omega = omega1
ps(3) = subplot(2,5,3);
plot(xomega1, pomega1, '-k', 'LineWidth', 2) 
hold on
plot(xomega1(1), pomega1(1), 'or', 'MarkerFaceColor', 'r')
xlabel('$X$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
%ylabel('$P$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
axis square
%axis([-5 5 -3.5 3.5])
%xticks([-5 -4 -3 -2 -1 0 1 2 3 4 5])
NW = [max(xlim) max(ylim)]+[-diff(xlim)*0.15 -diff(ylim)*0.08];
text(NW(1),NW(2),'(e)', 'FontSize', 20)
%grid on

% TR Omega = omega1
tr(3) = subplot(2,5,8);
plot(time, xomega1, '-g', time, pomega1,'-r')
hold on
%ylabel('$X, P$ [arb. unit]', 'Interpreter', 'latex')
ytickformat('%.0f')
legend('$~X=X(\tau)$', '$~P=P(\tau)$', 'Interpreter', 'latex', 'Location', 'Southeast')
xlabel('$\tau$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
axis square
%axis([0 20 -5 5])
%yticks([-5 -4 -3 -2 -1 0 1 2 3 4 5])
NW = [max(xlim) max(ylim)]+[-diff(xlim)*0.15 -diff(ylim)*0.08];
text(NW(1),NW(2),'(f)', 'FontSize', 20)

% PS Omega = omega1 + eps
ps(4) = subplot(2,5,4);
plot(xomega1plus, pomega1plus, '-k', 'LineWidth', 2) 
hold on
plot(xomega1minus(1), pomega1minus(1), 'or', 'MarkerFaceColor', 'r')
%xlabel('$X$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
%ylabel('$P$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
axis square
%axis([-5 5 -3.5 3.5])
%xticks([-5 -4 -3 -2 -1 0 1 2 3 4 5])
NW = [max(xlim) max(ylim)]+[-diff(xlim)*0.15 -diff(ylim)*0.08];
text(NW(1),NW(2),'(g)', 'FontSize', 20)

% TR Omega = omega1 + eps
tr(4) = subplot(2,5,9);
plot(time, xomega1plus, '-g', time, pomega1plus,'-r')
hold on
%ylabel('$X, P$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
ytickformat('%.0f')
legend('$~X=X(\tau)$', '$~P=P(\tau)$', 'Interpreter', 'latex', 'Location', 'Southeast')
%xlabel('$\tau$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
axis square
%axis([0 20 -5 5])
%yticks([-5 -4 -3 -2 -1 0 1 2 3 4 5])
NW = [max(xlim) max(ylim)]+[-diff(xlim)*0.15 -diff(ylim)*0.08];
text(NW(1),NW(2),'(h)', 'FontSize', 20)

% PS Omega = omega2
ps(5) = subplot(2,5,5);
plot(xomega2, pomega2, '-k', 'LineWidth', 2) 
hold on
plot(xomega2(1), pomega2(1), 'or', 'MarkerFaceColor', 'r')
%xlabel('$X$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
%ylabel('$P$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
axis square
%axis([-5 5 -3.5 3.5])
%xticks([-5 -4 -3 -2 -1 0 1 2 3 4 5])
NW = [max(xlim) max(ylim)]+[-diff(xlim)*0.15 -diff(ylim)*0.08];
text(NW(1),NW(2),'(i)', 'FontSize', 20)
%grid on

% TR Omega = omega2
tr(5) = subplot(2,5,10);
plot(time, xomega2, '-g', time, pomega2,'-r')
hold on
%ylabel('$X, P$ [arb. unit]', 'Interpreter', 'latex')
ytickformat('%.0f')
legend('$~X=X(\tau)$', '$~P=P(\tau)$', 'Interpreter', 'latex', 'Location', 'Southeast')
%xlabel('$\tau$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
axis square
%axis([0 20 -5 5])
%yticks([-5 -4 -3 -2 -1 0 1 2 3 4 5])
NW = [max(xlim) max(ylim)]+[-diff(xlim)*0.15 -diff(ylim)*0.08];
text(NW(1),NW(2),'(j)', 'FontSize', 20)

