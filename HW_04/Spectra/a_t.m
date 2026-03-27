n = 1:15; 

% vvv only values to change vvv
an = 0.*n; 
bn = (-1./(n.*pi)); c0 = 1/2;

cn = [c0, sqrt(an.^2+bn.^2)];
phin = [atand(0), atan2d(-bn,an)];
n = [0,n];

subplot(121); stem(n,cn,'k.'); xlabel('n'); ylabel('|C_n|');
axis([-0.5, 15.5, 0, 0.75]); grid on
subplot(122); stem(n,phin,'k.'); xlabel('n'); ylabel('\Phi_n');
axis([-0.5, 15.5, -1.1*pi, 1.1*pi]); grid on; set(gca,'ytick',-pi:pi/2:pi)
