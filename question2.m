%%%%%%question 2 a
clc;
clear;
fs=1000;
t=linspace(-10*fs,10*fs,fs); 
%getting fft 
x=(sinc(0.001*t)).^2;
X = (1/fs)*fftshift(fft(x));
xMag=abs(X);
xPhas = angle(X);
%getting the frequncy to plot with the function
f=fs/2*t;
w=2*pi*f;
figure;
% Plot x(t) X(w)
subplot(2,2,[1,2]);plot(t,x);title('x(t) sinc');
% ploting magnitude , phase with w
subplot(2,2,3); plot(w,xMag,'g');title('X(w) Magnitude');
xlim([-0.2 0.2])
subplot(2,2,4); plot(w,xPhas,'g');title('X(w) Phase');

%%% question 2 b
r = x.*cos((2*pi*(10^5))*t);
R= (1/fs)*fftshift(fft(r));
rMag=abs(R);
rPhas= angle(R);
figure;
% Plot r(t) R(w)
subplot(2,2,[1,2]);plot(t,r);title('r(t)');
% ploting magnitude , phase with w
subplot(2,2,[3,4]); plot(w,rMag,'r');title('R(w)');

