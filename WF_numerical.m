function WDF = WF_numerical(x, T, w)

if length(T) > 0.5*length(x)
    disp(dupa)
    WDF = 0;
end
h = 0.01;
suma = 0;
for m=(0.5*length(x)):(0.75*(length(x))) %petla dyktujaca czas
    %disp(m)
for k=1:length(w') %petla dyktujaca czestosc w
suma= 0.5*x(m)^2;
if m >1
for dx=1:(length(T)/4)
C=x(m-dx)*x(m+dx)*cos(2*dx*w(k)*h);
suma=suma+C;
end
end
WDF(m-(0.5*length(x) - 1),k)=4*h*(1/(2*pi))*(suma);
end
end


end
