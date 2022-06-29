clc
clear

set(0,'defaulttextinterpreter','latex');
set(0,'DefaultLineLineWidth', 1.25); 
set(0, 'defaultAxesTickLabelInterpreter','latex');
set(0,'defaultAxesFontSize',30);
set(0,'defaultAxesFontName', 'TeX Gyre Schola Math');
set(0,'defaulttextinterpreter','latex');
set(0, 'defaultAxesTickLabelInterpreter','latex');
set(0,'defaultAxesFontName', 'TeX Gyre Schola Math');
%set(groot, 'defaultFigureUnits', 'centimeters', 'defaultFigurePosition', [0 0 25 25]);
N = 2000;
dt = 0.01;
time = [0:dt:dt*N]; %siatka czasowa

%% parametry glowne
lambda = 0.26;
m = 1;


%% BELOW
x0_below=2.5;
p0_below = 0.1;


c_below = 0.5*p0_below*p0_below- 0.5*x0_below*x0_below + 0.25*lambda*x0_below*x0_below*x0_below*x0_below;
k_below = -1/(2*c_below*lambda) - (1/(2*c_below*lambda))*sqrt(1+4*c_below*lambda) - 1;

modified_time_below = time.*sqrt((sqrt(1+4*lambda*c_below) - 1)/2);
arg_below = (x0_below*sqrt(lambda))/(sqrt(1+sqrt(1+4*lambda*c_below)));
phi_below = asin(arg_below);
F_below = ellipticF(phi_below, k_below);

x_below = sqrt((1/lambda)*(1+sqrt(1+4*lambda*c_below)))*jacobiSN(modified_time_below + F_below, k_below);
p_below = m*sqrt(2*c_below)*jacobiCN(modified_time_below + F_below, k_below).*jacobiDN(modified_time_below + F_below, k_below);

%% SEPARATRIX

x0_sep = 0.1;
p0_sep = 0.1;

x_sep = (sqrt(2/lambda)).*sin(2*atan(exp(time).*tan(0.5*asin(sqrt(lambda/2).*x0_sep))));
p_sep = (2*sqrt(2/lambda).*exp(time).*tan(0.5*asin(sqrt(lambda/2)*x0_sep)).*cos(2*atan(exp(time).*tan(0.5*asin(sqrt(lambda/2)*x0_sep)))))./(exp(2*time).*(tan(0.5*asin(sqrt(lambda/2)*x0_sep))).^2 + 1);

%% ABOVE
x0_above=0.1;
p0_above = 2;

c_above = 0.5*p0_above*p0_above- 0.5*x0_above*x0_above + 0.25*lambda*x0_above*x0_above*x0_above*x0_above;
k_above = -1/(2*c_above*lambda) - (1/(2*c_above*lambda))*sqrt(1+4*c_above*lambda) - 1;

modified_time_above = time.*sqrt((sqrt(1+4*lambda*c_above) - 1)/2);
arg_above = (x0_above*sqrt(lambda))/(sqrt(1+sqrt(1+4*lambda*c_above)));
phi_above = asin(arg_above);
F_above = ellipticF(phi_above, k_above);

x_above = sqrt((1/lambda)*(1+sqrt(1+4*lambda*c_above)))*jacobiSN(modified_time_above + F_above, k_above);
p_above = m*sqrt(2*c_above)*jacobiCN(modified_time_above + F_above, k_above).*jacobiDN(modified_time_above + F_above, k_above);

clear c_below k_below modified_time_below phi_below F_below c_above k_above modified_time_above phi_above F_above

%% Drawing

%% Below Trajectories
%{
figure(1)
plot(time, x_below, '-g', time, p_below,'-r')
hold on
ylabel('$X, P$ [arb. unit]', 'Interpreter', 'latex')
ytickformat('%.0f')
legend('$~X=X(\tau)$', '$~P=P(\tau)$', 'Interpreter', 'latex', 'Location', 'Southeast')
xlabel('$\tau$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
axis('auto')
%yticks([-5 -4 -3 -2 -1 0 1 2 3 4 5])
NW = [min(xlim) max(ylim)]+[diff(xlim)*0.02 -diff(ylim)*0.05];
text(NW(1),NW(2),'(a)', 'FontSize', 30)
%grid on

%% Below PS
figure(2)
plot(x_below, p_below, '-k', 'LineWidth', 2) 
hold on
plot(x0_below, p0_below, 'or', 'MarkerFaceColor', 'r')
xlabel('$X$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
ylabel('$P$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
%axis([-5 5 -3.5 3.5])
%xticks([-5 -4 -3 -2 -1 0 1 2 3 4 5])
NW = [min(xlim) max(ylim)]+[diff(xlim)*0.02 -diff(ylim)*0.05];
text(NW(1),NW(2),'(b)', 'FontSize', 30)
%grid on

%% Separatrix Trajectories
figure(3)
plot(time, x_sep, '-g', time, p_sep,'-r')
hold on
ylabel('$X, P$ [arb. unit]', 'Interpreter', 'latex')
ytickformat('%.0f')
legend('$~X=X(\tau)$', '$~P=P(\tau)$', 'Interpreter', 'latex', 'Location', 'Southeast')
xlabel('$\tau$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
%axis([0 20 -5 5])
%yticks([-5 -4 -3 -2 -1 0 1 2 3 4 5])
NW = [min(xlim) max(ylim)]+[diff(xlim)*0.02 -diff(ylim)*0.05];
text(NW(1),NW(2),'(c)', 'FontSize', 30)
%grid on

%% Separatrix PS
figure(4)
plot(x_sep, p_sep, '-k', 'LineWidth', 2) 
hold on
plot(x0_sep, p0_sep, 'or', 'MarkerFaceColor', 'r')
xlabel('$X$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
ylabel('$P$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
%axis([-5 5 -3.5 3.5])
%xticks([-5 -4 -3 -2 -1 0 1 2 3 4 5])
NW = [min(xlim) max(ylim)]+[diff(xlim)*0.02 -diff(ylim)*0.05];
text(NW(1),NW(2),'(d)', 'FontSize', 30)
%grid on

%% Above Trajectories
figure(5)
plot(time, x_above, '-g', time, p_above,'-r')
hold on
ylabel('$X, P$ [arb. unit]', 'Interpreter', 'latex')
ytickformat('%.0f')
legend('$~X=X(\tau)$', '$~P=P(\tau)$', 'Interpreter', 'latex', 'Location', 'Southeast')
xlabel('$\tau$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
%axis([0 20 -5 5])
%yticks([-5 -4 -3 -2 -1 0 1 2 3 4 5])
NW = [min(xlim) max(ylim)]+[diff(xlim)*0.02 -diff(ylim)*0.05];
text(NW(1),NW(2),'(e)', 'FontSize', 30)
%grid on

%% Above PS
figure(6)
plot(x_above, p_above, '-k', 'LineWidth', 2) 
hold on
plot(x0_above, p0_above, 'or', 'MarkerFaceColor', 'r')
xlabel('$X$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
ylabel('$P$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
%axis([-5 5 -3.5 3.5])
%xticks([-5 -4 -3 -2 -1 0 1 2 3 4 5])
NW = [min(xlim) max(ylim)]+[diff(xlim)*0.02 -diff(ylim)*0.05];
text(NW(1),NW(2),'(f)', 'FontSize', 30)
%grid on

%% Subplots
set(0,'defaultAxesFontSize',20);
figure(7)
%}

% Below PS
ps(1) = subplot(2,3,1)
plot(x_below, p_below, '-k', 'LineWidth', 2) 
hold on
plot(x0_below, p0_below, 'or', 'MarkerFaceColor', 'r')
%xlabel('$X$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
ylabel('$P$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
axis square
%axis([-5 5 -3.5 3.5])
%xticks([-5 -4 -3 -2 -1 0 1 2 3 4 5])
NW = [min(xlim) max(ylim)]+[diff(xlim)*0.02 -diff(ylim)*0.05];
text(NW(1),NW(2),'(a)', 'FontSize', 30)


% Below trajectories
<<<<<<< Updated upstream
tr(1) = subplot(2,3,4)
=======
tr(1) = subplot(2,3,2)
>>>>>>> Stashed changes
plot(time, x_below, '-g', time, p_below,'-r')
hold on
ylabel('$X, P$ [arb. unit]', 'Interpreter', 'latex', 'FontSize',30)
ytickformat('%.0f')
%legend('$~X=X(\tau)$', '$~P=P(\tau)$', 'Interpreter', 'latex', 'Location', 'Southeast')
%xlabel('$\tau$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
axis square
%yticks([-5 -4 -3 -2 -1 0 1 2 3 4 5])
NW = [min(xlim) max(ylim)]+[diff(xlim)*0.02 -diff(ylim)*0.05];
text(NW(1),NW(2),'(b)', 'FontSize', 30)

% Sep PS
<<<<<<< Updated upstream
ps(2) = subplot(2,3,2)
=======
ps(2) = subplot(2,3,3)
>>>>>>> Stashed changes
plot(x_sep, p_sep, '-k', 'LineWidth', 2) 
hold on
plot(x0_sep, p0_sep, 'or', 'MarkerFaceColor', 'r')
xlabel('$X$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
%ylabel('$P$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
axis square
%axis([-5 5 -3.5 3.5])
%xticks([-5 -4 -3 -2 -1 0 1 2 3 4 5])
NW = [min(xlim) max(ylim)]+[diff(xlim)*0.02 -diff(ylim)*0.05];
text(NW(1),NW(2),'(c)', 'FontSize', 30)

% Sep trajectories
<<<<<<< Updated upstream
tr(2) = subplot(2,3,5)
=======
tr(2) = subplot(2,3,4)
>>>>>>> Stashed changes
plot(time, x_sep, '-g', time, p_sep,'-r')
hold on
%ylabel('$X, P$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
ytickformat('%.0f')
legend('$~X=X(\tau)$', '$~P=P(\tau)$', 'Interpreter', 'latex', 'Location', 'Southeast')
xlabel('$\tau$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
axis square
%axis([0 20 -5 5])
%yticks([-5 -4 -3 -2 -1 0 1 2 3 4 5])
NW = [min(xlim) max(ylim)]+[diff(xlim)*0.02 -diff(ylim)*0.05];
text(NW(1),NW(2),'(d)', 'FontSize', 30)

% Above PS
<<<<<<< Updated upstream
ps(3) = subplot(2,3,3)
=======
ps(3) = subplot(2,3,5)
>>>>>>> Stashed changes
plot(x_above, p_above, '-k', 'LineWidth', 2) 
hold on
plot(x0_above, p0_above, 'or', 'MarkerFaceColor', 'r')
%xlabel('$X$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
%ylabel('$P$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
axis square
%axis([-5 5 -3.5 3.5])
%xticks([-5 -4 -3 -2 -1 0 1 2 3 4 5])
NW = [min(xlim) max(ylim)]+[diff(xlim)*0.02 -diff(ylim)*0.05];
text(NW(1),NW(2),'(e)', 'FontSize', 30)
%grid on

% Above trajectories
tr(3) = subplot(2,3,6)
plot(time, x_above, '-g', time, p_above,'-r')
hold on
%ylabel('$X, P$ [arb. unit]', 'Interpreter', 'latex')
ytickformat('%.0f')
%legend('$~X=X(\tau)$', '$~P=P(\tau)$', 'Interpreter', 'latex', 'Location', 'Southeast')
%xlabel('$\tau$ [arb. unit]', 'Interpreter', 'latex', 'FontSize', 30)
axis square
%axis([0 20 -5 5])
%yticks([-5 -4 -3 -2 -1 0 1 2 3 4 5])
NW = [min(xlim) max(ylim)]+[diff(xlim)*0.02 -diff(ylim)*0.05];
text(NW(1),NW(2),'(f)', 'FontSize', 30)

tr(1).LineWidth = 1.5;
tr(2).LineWidth = 1.5;
tr(3).LineWidth = 1.5

ps(1).LineWidth = 1.5;
ps(2).LineWidth = 1.5;
ps(3).LineWidth = 1.5;

set(gcf,'color','w');
