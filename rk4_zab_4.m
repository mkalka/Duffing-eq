function [x_tab, p_tab] = rk4_zab_4(warunki_poczatkowe_x, warunki_poczatkowe_p, ilosc_czasteczek, ilosc_krokow_czasowych, dt, lambda, omega,f)

xtab = zeros(1, ilosc_krokow_czasowych);
ptab = zeros(1, ilosc_krokow_czasowych);

x_tab = zeros(ilosc_czasteczek, ilosc_krokow_czasowych+1); %
p_tab = zeros(ilosc_czasteczek, ilosc_krokow_czasowych+1); %
time = [0:dt:(ilosc_krokow_czasowych)*dt];
zaburzenie1 = f*cos(omega*time);
zaburzenie2 = f*cos(omega*(time + dt/2));
zaburzenie3 = f*cos(omega*(time + dt));

for j=1:ilosc_czasteczek
    %INICJALIZACJA
   
xtab(1) = warunki_poczatkowe_x(j);
ptab(1) = warunki_poczatkowe_p(j);

for i = 1:ilosc_krokow_czasowych
    
    %Algorytm Rungego - Kutty rzedu 4
    dx1 = dt*ptab(i);
    dp1 = dt*(xtab(i) - lambda*xtab(i).^3 + zaburzenie1(i)); 
    
    dx2 = dt*(ptab(i) + dp1/2);
    dp2 = dt*((xtab(i) + dx1/2) - lambda*(xtab(i) + dx1/2).^3 + zaburzenie2(i));
    
    dx3 = dt*(ptab(i) + dp2/2);
    dp3 = dt*((xtab(i) + dx2/2) - lambda*(xtab(i) + dx2/2).^3 + zaburzenie2(i));
        
    dx4 = dt*(ptab(i) + dp3);
    dp4 = dt*((xtab(i) + dx3) - lambda*(xtab(i) + dx3).^3 + zaburzenie3(i));
    
    dx = (1/6).*(dx1 + 2.*dx2 + 2*dx3 + dx4);
    dp = (1/6).*(dp1 + 2.*dp2 + 2*dp3 + dp4);
    
    xtab(i+1) = xtab(i) + dx; 
    ptab(i+1) = ptab(i) + dp; 
    
end
x_tab(j, :) = xtab;
p_tab(j, :) = ptab;

end

clear ptab xtab;
end