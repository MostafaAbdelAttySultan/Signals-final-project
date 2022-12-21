t= linspace (-4,4,10000);
%y(t)
y= exp(-abs(t)./5) .*(heaviside(t+1)-heaviside (t-3));
subplot(2,2,1);
plot(t,y);
xlim([-1.1,3.1]);
ylim([0,1.1]);

%y(3t)
y1=exp(-abs(3*t)./5) .*(heaviside(3*t+1)-heaviside (3*t-3));
subplot(2,2,2);
plot(t,y1);
xlim([-0.4,1.1]);
ylim([0,1.1]);

%y(t+2)
y2=exp(-abs(t+2)./5) .*(heaviside(t+2+1)-heaviside (t+2-3));
subplot(2,2,3);
plot(t,y2);
xlim([-3.1,1.1]);
ylim([0,1.1]);

%y(4-2t)
y3=exp(-abs(4-(2*t))./5) .*(heaviside((4-(2*t))+1)-heaviside ((4-(2*t))-3));
subplot(2,2,4);
plot(t,y3);
xlim([0.4,2.6]);
ylim([0,1.1]);